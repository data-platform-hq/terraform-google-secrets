# Google Secret Manager Terraform module
Terraform module for creation Google secrets

## Usage

<!-- BEGIN_TF_DOCS -->
## Requirements
| Name                                                                      | Version  |
| ------------------------------------------------------------------------- | -------- |
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_google"></a> [google](#requirement\_google)          | = 4.24.0 |
| <a name="requirement_random"></a> [random](#requirement\_random)          | >= 3.4.3 |

## Providers
| Name                                                       | Version |
| ---------------------------------------------------------- | ------- |
| <a name="provider_google"></a> [google](#provider\_google) | 4.24.0  |
| <a name="provider_random"></a> [random](#provider\_random) | 3.4.3   |

## Modules
No modules.

## Resources
| Name                                                                                                                                                                      | Type     |
| ------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------- |
| [google_secret_manager_secret.sa_key](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret)                               | resource |
| [google_secret_manager_secret_version.sa_key](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version)               | resource |
| [google_secret_manager_secret.sqlroot_passwd_value](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret)                 | resource |
| [google_secret_manager_secret_version.sqlroot_passwd_value](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version) | resource |
| [google_secret_manager_secret.sqluser_name](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret)                         | resource |
| [google_secret_manager_secret_version.sqluser_name_value](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version)   | resource |
| [google_secret_manager_secret.sqluser_passwd_name](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret)                  | resource |
| [google_secret_manager_secret_version.sqluser_passwd_value](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/secret_manager_secret_version) | resource |
| [random_string.sqlroot_passwd](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string)                                                     | resource |
| [random_string.sqluser_name](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string)                                                       | resource |
| [random_string.sqluser_passwd](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string)                                                     | resource |



## Inputs
| Name                                                                                      | Description                                                                 | Type          | Default | Required |
| ----------------------------------------------------------------------------------------- | --------------------------------------------------------------------------- | ------------- | ------- | :------: |
| <a name="input_region"></a> [region](#input\_region)                                      | The location or cloud resources region for the environment.                 | `string`      | n/a     |   yes    |
| <a name="input_product_base_name"></a> [product\_base\_name](#input\_product\_base\_name) | Cloud resources base name (used to create services).                        | `string`      | n/a     |   yes    |
| <a name="input_env"></a> [env](#input\_env)                                               | Variable to mark the environment of the resource (used to create services). | `string`      | n/a     |   yes    |
| <a name="input_project_number"></a> [project\_number](#input\_project\_number)            | The numeric identifier of the GCP project.                                  | `string`      | n/a     |   yes    |
| <a name="input_sa_key"></a> [sa\_key](#input\_sa\_key)                                    | Names (key/value pair) of secrets where service accounts keys are stored.   | `map(any)`    | n/a     |   yes    |
| <a name="input_labels"></a> [labels](#input\_labels)                                      | The labels associated with secrets.                                         | `map(string)` | {}      |    no    |

## Outputs
| Name                                                                                                                           | Description                                                 |
| ------------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------- |
| <a name="output_sa_key_secret"></a> [sa\_key\_secret](#output\_sa\_key\_secret)                                                | The name of secret where key for service account is stored. |
| <a name="output_sqlroot_passwd_secrets_value"></a> [sqlroot\_passwd\_secrets\_value](#sqlroot\_passwd\_secrets\_value)         | The value for SQL instance rootuser password.               |
| <a name="output_sqluser_name_secrets_id"></a> [sqluser\_name\_secrets\_id](#output\_sqluser\_name\_secrets\_id)                | The id for SQL instance username secret.                    |
| <a name="output_sqluser_name_secrets_value"></a> [sqluser\_name\_secrets\_value](#output\_sqluser\_name\_secrets\_value)       | The value for SQL instance username                         |
| <a name="output_sqluser_passwd_secrets_id"></a> [sqluser\_passwd\_secrets\_id](#output\_sqluser\_passwd\_secrets\_id)          | The id for SQL instance user password secret.               |
| <a name="output_sqluser_passwd_secrets_value"></a> [sqluser\_passwd\_secrets\_value](#output\_sqluser\_passwd\_secrets\_value) | The value for SQL instance user password secret.            |
<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-google-secrets/blob/main/LICENSE)
