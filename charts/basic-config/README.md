# basic-config

![Version: 0.0.1](https://img.shields.io/badge/Version-0.0.1-informational?style=flat-square) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat-square)

A Helm chart for defining basic k8s configuration res

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| configMaps | list | `[]` | A list of configuration maps |
| externalSecrets | list | `[]` | Define ExternalSecrets from AWS |
| global | object | `{"additionalLabels":{},"cloudProvider":{"accountId":""},"clusterDomain":"127.0.0.1.nip.io","clusterEnv":"local","clusterName":"","ingressTLSSecrets":{},"name":"example-app","owner":"","partOf":"","runtimeEnvironment":"kubernetes","terraform":{"irsa":false}}` | Global variables for us in all charts and sub charts |
| global.additionalLabels | object | `{}` | Additional labels to apply to all resources |
| global.cloudProvider | object | `{"accountId":""}` | Global variables relating to cloud provider |
| global.cloudProvider.accountId | string | `""` | AWS Account Id |
| global.clusterDomain | string | `"127.0.0.1.nip.io"` | Kubernetes cluster domain |
| global.clusterEnv | string | `"local"` | Environment (local, dev, qa, prod) |
| global.clusterName | string | `""` | Kubernetes cluster name |
| global.ingressTLSSecrets | object | `{}` | Global dictionary of TLS secrets |
| global.name | string | `"example-app"` | Name of the application |
| global.owner | string | `""` | Team which "owns" the application |
| global.partOf | string | `""` | Top level application each deployment is a part of |
| global.runtimeEnvironment | string | `"kubernetes"` | Global variable defining RUNTIME_ENVIRONMENT |
| serviceAccount.annotations | object | `{}` | Additional Service Account annotations |
| serviceAccount.automountServiceAccountToken | bool | `true` | Whether to automount the service account token or not |
| serviceAccount.clusterRoles | list | `[]` | Define list of ClusterRole's to create and bind to the service account ref: https://kubernetes.io/docs/reference/access-authn-authz/rbac/ |
| serviceAccount.create | bool | `false` | Determine whether a Service Account should be created or it should reuse a exiting one. |
| serviceAccount.irsa | object | `{"enabled":false,"nameOverride":""}` | Configures IRSA for the Service Account |
| serviceAccount.irsa.enabled | bool | `false` | Determines whether service account is IRSA enabled |
| serviceAccount.irsa.nameOverride | string | `""` | Override for last component of role-arn, ie: accountid-clusterName-namespace-{nameOverride} |
| serviceAccount.name | string | `""` | ServiceAccount to use. A name is generated using the mintel_common.fullname template if it is not set |
| serviceAccount.roles | list | `[]` | Define list of Role's to create and bind to the service account ref: https://kubernetes.io/docs/reference/access-authn-authz/rbac/ |

----------------------------------------------
Autogenerated from chart metadata using [helm-docs v1.7.0](https://github.com/norwoodj/helm-docs/releases/v1.7.0)