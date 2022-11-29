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
| [null_resource.sa_keys](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource)                                                            | resource |
| [random_string.sqlroot_passwd](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string)                                                     | resource |
| [random_string.sqluser_name](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string)                                                       | resource |
| [random_string.sqluser_passwd](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string)                                                     | resource |



## Inputs
| Name                                                                                      | Description                                                                | Type       | Default                                                                                                           | Required |
| ----------------------------------------------------------------------------------------- | -------------------------------------------------------------------------- | ---------- | ----------------------------------------------------------------------------------------------------------------- | :------: |
| <a name="input_region"></a> [region](#input\_region)                                      | The location or cloud resources region for the environment                 | `string`   | <pre><br>us-west1</pre>                                                                                           |   yes    |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id)                        | The ID of the project to which the resource belongs                        | `string`   | n/a                                                                                                               |   yes    |
| <a name="input_project_number"></a> [project\_number](#input\_project\_number)            | The numeric identifier of the GCP project                                  | `string`   | n/a                                                                                                               |   yes    |
| <a name="input_product_base_name"></a> [product\_base\_name](#input\_product\_base\_name) | Cloud resources base name (used to create services)                        | `string`   | n/a                                                                                                               |   yes    |
| <a name="input_env"></a> [env](#input\_env)                                               | Variable to mark the environment of the resource (used to create services) | `string`   | <pre><br>dev</pre>                                                                                                |   yes    |
| <a name="input_sqluser_name"></a> [sqluser\_name](#input\_sqluser\_name)                  | Username for SQL server                                                    | `string`   | n/a                                                                                                               |   yes    |
| <a name="input_sqluser_password"></a> [sqluser\_password](#input\_sqluser\_password)      | User password for SQL Server                                               | `string`   | n/a                                                                                                               |   yes    |
| <a name="input_sa_key"></a> [sa\_key](#input\_sa\_key)                                    | Names of secrets where service accounts keys are stored                    | `map(any)` | <pre>{<br> raw_serverless = ""<br> raw_spark      = ""<br> dp_serverless  = ""<br> dp_spark       = ""<br>}</pre> |   yes    |

## Outputs
| Name                                                                                                               | Description                                                               |
| ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------- |
| <a name="output_raw_serverless_sa_secret"></a> [raw\_serverless\_sa\_secret](#output\_raw\_serverless\_sa\_secret) | The name of secret where key for raw_serverless service account is stored |
| <a name="output_raw_spark_secret"></a> [raw\_spark\_secret](#output\_raw\_spark\_secret)                           | The name of secret where key for raw_spark service account is stored      |
| <a name="output_dp_serverless_secret"></a> [dp\_serverless\_secret](#output\_dp\_serverless\_secret)               | The name of secret where key for dp_serverless service account is stored  |
| <a name="output_dp_spark_sa_secret"></a> [dp\_spark\_sa\_secret](#output\_dp\_spark\_sa\_secret)                   | The name of secret where key for dp_spark service account is stored       |
| <a name="output_sqlroot_passwd_id"></a> [sqlroot\_passwd\_id](#output\_sqlroot\_passwd\_id)                        | The value for SQL instance root user password                             |
| <a name="output_sqlroot_passwd_data"></a> [sqlroot\_passwd\_data](#output\_sqlroot\_passwd\_data)                  | The value for SQL instance root user password                             |
| <a name="output_sqluser_name_id"></a> [sqluser\_name\_id](#output\_sqluser\_name\_id)                              | The id for SQL instance username id                                       |
| <a name="output_sqluser_name"></a> [sqluser\_name](#output\_sqluser\_name)                                         | The value for SQL instance username                                       |
| <a name="output_sqluser_name_data"></a> [sqluser\_name\_data](#output\_sqluser\_name\_data)                        | The value for SQL instance username                                       |
| <a name="output_sqluser_passwd_id"></a> [sqluser\_passwd\_id](#output\_sqluser\_passwd\_id)                        | The value for SQL instance user password id                               |
| <a name="output_sqluser_passwd_data"></a> [sqluser\_passwd\_data](#output\_sqluser\_passwd\_data)                  | The id for SQL instance user password                                     |

<!-- END_TF_DOCS -->

## License

Apache 2 Licensed. For more information please see [LICENSE](https://github.com/data-platform-hq/terraform-google-secrets/blob/main/LICENSE)
