# Google Secret Manager Terraform module
Terraform module for creation Google secrets

## Usage

<!-- BEGIN_TF_DOCS -->
## Requirements
| Name                                                                      | Version   |
|---------------------------------------------------------------------------|-----------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0  |
| <a name="requirement_google"></a> [google](#requirement\_google)          | >= 4.69.0 |

## Providers
| Name                                                       | Version |
|------------------------------------------------------------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 4.69.1  |

## Modules
No modules.

## Resources
| Name                                                                                                                                                      | Type     |
|-----------------------------------------------------------------------------------------------------------------------------------------------------------|----------|
| [google_secret_secret_manager_secret.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret)          | resource |
| [google_secret_manager_secret_version.this](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version) | resource |

## Inputs
| Name                                                                                         | Description                                                                                                                                                                                                                                     | Type          | Default | Required |
|----------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------|---------|:--------:|
| <a name="input_region"></a> [region](#input\_region)                                         | The location or cloud resources region for the environment.                                                                                                                                                                                     | `string`      | n/a     |   yes    |
| <a name="input_env"></a> [env](#input\_env)                                                  | Variable to mark the environment of the resource (used to create services).                                                                                                                                                                     | `string`      | n/a     |   yes    |
| <a name="input_prefix"></a> [prefix](#input\_prefix)                                         | Prefix for resource names                                                                                                                                                                                                                       | `string`      | ""      |    no    |
| <a name="input_suffix"></a> [suffix](#input\_suffix)                                         | Suffix for resource names                                                                                                                                                                                                                       | `string`      | ""      |    no    |
| <a name="input_secrets_input"></a> [secrets\_input](#input\_secrets\_input)                  | A key/value pair to create a secret. The key will be used for the secret name, the value will be stored as the secret value                                                                                                                     | `map(string)` | n/a     |   yes    |
| <a name="input_expire_time"></a> [expire\_time](#input\_expire\_time)                        | Timestamp in UTC when the Secret is scheduled to expire                                                                                                                                                                                         | `string`      | ""      |    no    |
| <a name="input_next_rotation_time"></a> [next\_rotation\_time](#input\_next\_rotation\_time) | Timestamp in UTC at which the Secret is scheduled to rotate                                                                                                                                                                                     | `string`      | ""      |    no    |
| <a name="input_rotation_period"></a> [rotation\_period](#input\_rotation\_period)            | The Duration between rotation notifications. If rotationPeriod is set, next_rotation_time must be set                                                                                                                                           | `string`      | ""      |    no    |
| <a name="input_topics_name"></a> [topics\_name](#input\_topics\_name)                        | The resource name of the Pub/Sub topic that will be published to, in the following format: projects//topics/. For publication to succeed, the Secret Manager Service Agent service account must have pubsub.publisher permissions on the topic. | `string`      | ""      |    no    |
| <a name="input_labels"></a> [labels](#input\_labels)                                         | The labels associated with secrets.                                                                                                                                                                                                             | `map(string)` | {}      |    no    |

## Outputs
| Name                                                                         | Description             |
|------------------------------------------------------------------------------|-------------------------|
| <a name="output_secrets_id"></a> [secrets\_id](#output\_secrets\_id)         | The secrets id.         |
| <a name="output_secrets_name"></a> [secrets\_name](#output\_secrets\_name)   | The name of the secret. |
| <a name="output_secrets_value"></a> [secrets_value](#output\_secrets\_value) | The value of secrets.   |
<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-google-secrets/blob/main/LICENSE)
