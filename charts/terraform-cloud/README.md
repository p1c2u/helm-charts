# terraform-cloud

![Version: 0.5.0](https://img.shields.io/badge/Version-0.5.0-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square) ![AppVersion: 1.1.0](https://img.shields.io/badge/AppVersion-1.1.0-informational?style=flat-square)

A Helm chart for provisioning resources using Terraform Cloud

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| dynamodb.enabled | bool | `false` | Set to true to create a DynamoDB instance |
| dynamodb.terraform.defaultVars | object | `{}` | Vars to be applied to all instances defined below |
| dynamodb.terraform.instances | object | `{}` | A map of instance names => variable key/value pairs to be sent to the terraform module. The values in `defaultVars` will be applied to every instance if not explicitly defined here. |
| dynamodb.terraform.module | object | `{"source":"app.terraform.io/Mintel/dynamodb/aws","version":"0.1.0-beta.1"}` | Set Terraform version for this module to overwrite global.TerraformVersion terraformVersion: |
| dynamodb.terraform.module.source | string | `"app.terraform.io/Mintel/dynamodb/aws"` | Registry path of the Terraform module used to create the resource (https://app.terraform.io/app/Mintel/registry/modules/private/Mintel/dynamodb/aws) |
| dynamodb.terraform.module.version | string | `"0.1.0-beta.1"` | Module version |
| global.clusterDomain | string | `"127.0.0.1.nip.io"` | Additional labels to apply to all resources |
| global.clusterEnv | string | `"local"` | Environment (local, dev, qa, prod) |
| global.clusterName | string | `""` | Kubernetes cluster name |
| global.clusterRegion | string | `""` | Kubernetes cluster region |
| global.name | string | `"example-app"` | Name of the application |
| global.owner | string | `""` | Team which "owns" the application |
| global.partOf | string | `""` | Top level application each deployment is a part of |
| global.terraform.agentPoolID | string | `""` | ID of the Terraform Cloud Agent Pool to use for the run. Passed in from cluster-env-jsonnet |
| global.terraform.externalSecrets | bool | `true` | Set to true as part of tf cloud migrations. When true, it stops standard-application-stack from creating AWS related external secrets and passes that responsibility to the terraform-cloud chart |
| global.terraform.organization | string | `"Mintel"` | Name of our Terraform Cloud org |
| global.terraform.secretsMountPath | string | `"/tmp/secrets"` | Where secrets are mounted inside the Terraform Operator container |
| global.terraform.terraformVersion | string | `"1.0.7"` | Global Terraform version for all modules |
| irsa.terraform.module | object | `{"source":"app.terraform.io/Mintel/app-iam/aws","version":"0.0.1-alpha.3"}` | Set Terraform version for this module to overwrite global.TerraformVersion terraformVersion: |
| irsa.terraform.module.source | string | `"app.terraform.io/Mintel/app-iam/aws"` | Registry path of the Terraform module used to create the resource (https://app.terraform.io/app/Mintel/registry/modules/private/Mintel/app-iam/aws) |
| irsa.terraform.module.version | string | `"0.0.1-alpha.3"` | Module version |
| irsa.terraform.vars | object | `{}` |  |
| mariadb.enabled | bool | `false` | Set to true to create a MariaDB RDS instance |
| mariadb.terraform.defaultVars | object | See below | Vars to be applied to all instances defined below |
| mariadb.terraform.defaultVars.engine | string | `"mariadb"` | Database engine to use (should always be "mariadb") |
| mariadb.terraform.defaultVars.engine_version | string | `"10.5"` | MariaDB version |
| mariadb.terraform.defaultVars.port | int | `3306` | MariaDB port |
| mariadb.terraform.instances | object | `{}` | A map of instance names => variable key/value pairs to be sent to the terraform module. The values in `defaultVars` will be applied to every instance if not explicitly defined here. |
| mariadb.terraform.module | object | `{"source":"app.terraform.io/Mintel/rds/aws","version":"0.1.0-beta.2"}` | Set Terraform version for this module to overwrite global.TerraformVersion terraformVersion: |
| mariadb.terraform.module.source | string | `"app.terraform.io/Mintel/rds/aws"` | Registry path of the Terraform module used to create the resource (https://app.terraform.io/app/Mintel/registry/modules/private/Mintel/rds/aws) |
| mariadb.terraform.module.version | string | `"0.1.0-beta.2"` | Module version |
| memcached.enabled | bool | `false` | Set to true to create a memcached Elasticache resource |
| memcached.terraform.defaultVars | object | See below | Vars to be applied to all instances defined below |
| memcached.terraform.defaultVars.instance_type | string | `"cache.t4g.micro"` | EC2 instance type to use (https://aws.amazon.com/elasticache/pricing) |
| memcached.terraform.defaultVars.num_cache_nodes | int | `1` | Number of nodes to create in the cluster |
| memcached.terraform.instances | object | `{}` | A map of instance names => variable key/value pairs to be sent to the terraform module. The values in `defaultVars` will be applied to every instance if not explicitly defined here. |
| memcached.terraform.module | object | `{"source":"app.terraform.io/Mintel/memcached/aws","version":"0.1.0-beta.2"}` | Set Terraform version for this module to overwrite global.TerraformVersion terraformVersion: |
| memcached.terraform.module.source | string | `"app.terraform.io/Mintel/memcached/aws"` | Registry path of the Terraform module used to create the resource (https://app.terraform.io/app/Mintel/registry/modules/private/Mintel/memcached/aws) |
| memcached.terraform.module.version | string | `"0.1.0-beta.2"` | Module version |
| opensearch.enabled | bool | `false` | Set to true to create an Opensearch cluster |
| opensearch.terraform.defaultVars | object | `{}` | Vars to be applied to all instances defined below |
| opensearch.terraform.instances | object | `{}` | A map of instance names => variable key/value pairs to be sent to the terraform module. The values in `defaultVars` will be applied to every instance if not explicitly defined here. |
| opensearch.terraform.module | object | `{"source":"app.terraform.io/Mintel/opensearch/aws","version":"0.1.0-beta.2"}` | Set Terraform version for this module to overwrite global.TerraformVersion terraformVersion: |
| opensearch.terraform.module.source | string | `"app.terraform.io/Mintel/opensearch/aws"` | Registry path of the Terraform module used to create the resource (https://app.terraform.io/app/Mintel/registry/modules/private/Mintel/opensearch/aws) |
| opensearch.terraform.module.version | string | `"0.1.0-beta.2"` | Module version |
| postgresql.enabled | bool | `false` | Set to true to create a PostgreSQL RDS instance |
| postgresql.terraform.defaultVars | object | See below | Vars to be applied to all instances defined below |
| postgresql.terraform.defaultVars.engine | string | `"postgres"` | Database engine to use (should always be "postgres") |
| postgresql.terraform.defaultVars.engine_version | string | `"13"` | PostgreSQL version |
| postgresql.terraform.defaultVars.port | int | `5432` | PostgreSQL port |
| postgresql.terraform.instances | object | `{}` | A map of instance names => variable key/value pairs to be sent to the terraform module. The values in `defaultVars` will be applied to every instance if not explicitly defined here. |
| postgresql.terraform.module | object | `{"source":"app.terraform.io/Mintel/rds/aws","version":"0.1.0-beta.2"}` | Set Terraform version for this module to overwrite global.TerraformVersion terraformVersion: |
| postgresql.terraform.module.source | string | `"app.terraform.io/Mintel/rds/aws"` | Registry path of the Terraform module used to create the resource (https://app.terraform.io/app/Mintel/registry/modules/private/Mintel/rds/aws) |
| postgresql.terraform.module.version | string | `"0.1.0-beta.2"` | Module version |
| redis.enabled | bool | `false` | Set to true to create a Redis Elasticache resource |
| redis.terraform.defaultVars | object | `{}` | Vars to be applied to all instances defined below |
| redis.terraform.instances | object | `{}` | A map of instance names => variable key/value pairs to be sent to the terraform module. The values in `defaultVars` will be applied to every instance if not explicitly defined here. |
| redis.terraform.module | object | `{"source":"app.terraform.io/Mintel/redis/aws","version":"0.1.0-beta.3"}` | Set Terraform version for this module to overwrite global.TerraformVersion terraformVersion: |
| redis.terraform.module.source | string | `"app.terraform.io/Mintel/redis/aws"` | Registry path of the Terraform module used to create the resource (https://app.terraform.io/app/Mintel/registry/modules/private/Mintel/redis/aws) |
| redis.terraform.module.version | string | `"0.1.0-beta.3"` | Module version |
| s3.enabled | bool | `false` | Set to true to create an S3 bucket |
| s3.terraform.defaultVars | object | `{}` | Vars to be applied to all instances defined below |
| s3.terraform.instances | object | `{}` | A map of instance names => variable key/value pairs to be sent to the terraform module. The values in `defaultVars` will be applied to every instance if not explicitly defined here. |
| s3.terraform.module | object | `{"source":"app.terraform.io/Mintel/private-s3-bucket/aws","version":"0.1.0-beta.2"}` | Set Terraform version for this module to overwrite global.TerraformVersion terraformVersion: |
| s3.terraform.module.source | string | `"app.terraform.io/Mintel/private-s3-bucket/aws"` | Registry path of the Terraform module used to create the resource (https://app.terraform.io/app/Mintel/registry/modules/private/Mintel/private-s3-bucket/aws) |
| s3.terraform.module.version | string | `"0.1.0-beta.2"` | Module version |
| sns.enabled | bool | `false` | Set to true to create an SNS resource |
| sns.terraform.defaultVars | object | `{}` | Vars to be applied to all instances defined below |
| sns.terraform.instances | object | `{}` | A map of instance names => variable key/value pairs to be sent to the terraform module. The values in `defaultVars` will be applied to every instance if not explicitly defined here. |
| sns.terraform.module | object | `{"source":"app.terraform.io/Mintel/sns/aws","version":"0.1.0-beta.1"}` | Set Terraform version for this module to overwrite global.TerraformVersion terraformVersion: |
| sns.terraform.module.source | string | `"app.terraform.io/Mintel/sns/aws"` | Registry path of the Terraform module used to create the resource (https://app.terraform.io/app/Mintel/registry/modules/private/Mintel/sns/aws) |
| sns.terraform.module.version | string | `"0.1.0-beta.1"` | Module version |
| sqs.enabled | bool | `false` | Set to true to create an SQS resource |
| sqs.terraform.defaultVars | object | `{}` | Vars to be applied to all instances defined below |
| sqs.terraform.instances | object | `{}` | A map of instance names => variable key/value pairs to be sent to the terraform module. The values in `defaultVars` will be applied to every instance if not explicitly defined here. |
| sqs.terraform.module | object | `{"source":"app.terraform.io/Mintel/sqs/aws","version":"0.1.0-beta.1"}` | Set Terraform version for this module to overwrite global.TerraformVersion terraformVersion: |
| sqs.terraform.module.source | string | `"app.terraform.io/Mintel/sqs/aws"` | Registry path of the Terraform module used to create the resource (https://app.terraform.io/app/Mintel/registry/modules/private/Mintel/sqs/aws) |
| sqs.terraform.module.version | string | `"0.1.0-beta.1"` | Module version |
| staticWebsite.enabled | bool | `false` | Set to true to create static website (a public bucket and associated resources) |
| staticWebsite.terraform.defaultVars | object | `{}` | Vars to be applied to all instances defined below |
| staticWebsite.terraform.instances | object | `{}` | A map of instance names => variable key/value pairs to be sent to the terraform module. The values in `defaultVars` will be applied to every instance if not explicitly defined here. |
| staticWebsite.terraform.module | object | `{"source":"app.terraform.io/Mintel/public-static-website/aws","version":"0.1.0-beta.1"}` | Set Terraform version for this module to overwrite global.TerraformVersion terraformVersion: |
| staticWebsite.terraform.module.source | string | `"app.terraform.io/Mintel/public-static-website/aws"` | Registry path of the Terraform module used to create the resource (https://app.terraform.io/app/Mintel/registry/modules/private/Mintel/public-static-website/aws) |
| staticWebsite.terraform.module.version | string | `"0.1.0-beta.1"` | Module version |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.7.0](https://github.com/norwoodj/helm-docs/releases/v1.7.0)