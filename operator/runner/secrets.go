// Copyright 2019 Drone IO, Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package runner

import (
	"fmt"

	"github.com/drone/drone-runtime/engine"
	"github.com/drone/drone/core"
)

func toSecretMap(secrets []*core.Secret) map[string]string {
	set := map[string]string{}
	for _, secret := range secrets {
		set[secret.Name] = secret.Data
	}
	return set
}

// volumeSecretFunc is a callback function used to preprocess
// all the VolumeSecret secrets.
type volumeSecretFunc func(secret, path, name string) *engine.Secret

// secretNameKey is a simple struct to hold secrets' name-key pairs
type secretNameKey struct {
	name string
	key  string
}

// withVolumeSecretFunc is a transform function that preprocesses
// all the VolumeSecrets in the specification so that their secrets
// are dynamically created as if they were manually typed into the
// YAML.
func withVolumeSecretFunc(f volumeSecretFunc) func(*engine.Spec) {
	return func(spec *engine.Spec) {
		if spec.Docker == nil {
			return
		}

		// first we get a unique list of all
		// VolumeSecret used by the specification.
		set := map[string]secretNameKey{}
		for _, vol := range spec.Docker.Volumes {
			if vol.Secret == nil {
				continue
			}
			for _, item := range vol.Secret.Items {
				globalSecretName := fmt.Sprintf("%s-%s-%s",
					vol.Metadata.Name,
					vol.Secret.Name,
					item.Key)
				set[globalSecretName] = secretNameKey{
					name: vol.Secret.Name,
					key:  item.Key,
				}
			}
		}

		// next we use the callback to process the secret in manifest and
		// the steps that refer to it
		for secretName, secretData := range set {
			secret := f(secretName, secretData.name, secretData.key)
			if secret != nil {
				spec.Secrets = append(spec.Secrets, secret)
			}
		}
	}
}
