# Google Secret Manager Terraform module
Terraform module for creation Google secrets

## Usage

<!-- BEGIN_TF_DOCS -->
## Requirements
| Name                                                                      | Version  |
| ------------------------------------------------------------------------- | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_google"></a> [google](#requirement\_google)          | = 4.24.0 |

## Providers
| Name                                                       | Version |
| ---------------------------------------------------------- | ------- |
| <a name="provider_google"></a> [google](#provider\_google) | 4.24.0  |

## Modules
No modules.

## Resources
| Name                                                                                                                                                             | Type     |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [google_secret_secret_manager_secret.creds](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret)                | resource |
| [google_secret_manager_secret_version.creds_value](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version) | resource |

## Inputs
| Name                                                                                      | Description                                                                                                                  | Type          | Default | Required |
| ----------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------- | ------------- | ------- | :------: |
| <a name="input_region"></a> [region](#input\_region)                                      | The location or cloud resources region for the environment.                                                                  | `string`      | n/a     |   yes    |
| <a name="input_product_base_name"></a> [product\_base\_name](#input\_product\_base\_name) | Cloud resources base name (used to create services).                                                                         | `string`      | n/a     |   yes    |
| <a name="input_env"></a> [env](#input\_env)                                               | Variable to mark the environment of the resource (used to create services).                                                  | `string`      | n/a     |   yes    |
| <a name="input_secrets_input"></a> [secrets\_input](#input\_secrets\_input)               | A key/value pair to create a secret. The key will be used for the secret name, the value will be stored as the secret value. | `map(string)` | n/a     |   yes    |
| <a name="input_labels"></a> [labels](#input\_labels)                                      | The labels associated with secrets.                                                                                          | `map(string)` | {}      |    no    |

## Outputs
| Name                                                                         | Description             |
| ---------------------------------------------------------------------------- | ----------------------- |
| <a name="output_secrets_id"></a> [secrets\_id](#output\_secrets\_id)         | The secrets id.         |
| <a name="output_secrets_name"></a> [secrets\_name](#output\_secrets\_name)   | The name of the secret. |
| <a name="output_secrets_value"></a> [secrets_value](#output\_secrets\_value) | The value of secrets.   |
<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-google-secrets/blob/main/LICENSE)
