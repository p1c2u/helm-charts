{{/* vim: set filetype=mustache: */}}

{{/*
Return the target Kubernetes version
*/}}
{{- define "common.capabilities.kubeVersion" -}}
{{- if .Values.global }}
    {{- if .Values.global.kubeVersion }}
    {{- .Values.global.kubeVersion -}}
    {{- else }}
    {{- default .Capabilities.KubeVersion.Version .Values.kubeVersion -}}
    {{- end -}}
{{- else }}
{{- default .Capabilities.KubeVersion.Version .Values.kubeVersion -}}
{{- end -}}
{{- end -}}

{{/* Return the appropriate apiVersion for policy. */}}
{{- define "common.capabilities.policy.apiVersion" -}}
{{- print "policy/v1" -}}
{{- end -}}

{{/* Return the appropriate apiVersion for cronjob. */}}
{{- define "common.capabilities.cronjob.apiVersion" -}}
{{- print "batch/v1" -}}
{{- end -}}

{{/* Return the appropriate apiVersion for deployment. */}}
{{- define "common.capabilities.deployment.apiVersion" -}}
{{- print "apps/v1" -}}
{{- end -}}

{{/* Return the appropriate apiVersion for statefulset. */}}
{{- define "common.capabilities.statefulset.apiVersion" -}}
{{- print "apps/v1" -}}
{{- end -}}

{{/* Return the appropriate apiVersion for ingress */}}
{{- define "common.capabilities.ingress.apiVersion" -}}
{{- if .Values.ingress.apiVersion -}}
{{- .Values.ingress.apiVersion -}}
{{- else }}
{{- print "networking.k8s.io/v1" -}}
{{- end }}
{{- end -}}

{{/* Return the appropriate apiVersion for RBAC resources. */}}
{{- define "common.capabilities.rbac.apiVersion" -}}
{{- print "rbac.authorization.k8s.io/v1" -}}
{{- end -}}

{{/* Return the appropriate apiVersion for CRDs. */}}
{{- define "common.capabilities.crd.apiVersion" -}}
{{- print "apiextensions.k8s.io/v1" -}}
{{- end -}}

{{/* Return the appropriate apiVersion for Pod Monitors. */}}
{{- define "common.capabilities.podmonitor.apiVersion" -}}
{{- print "monitoring.coreos.com/v1" -}}
{{- end -}}

{{/* Return the appropriate apiVersion for Service Monitors. */}}
{{- define "common.capabilities.servicemonitor.apiVersion" -}}
{{- print "monitoring.coreos.com/v1" -}}
{{- end -}}

{{/* Return the appropriate apiVersion for External Secrets. */}}
{{- define "common.capabilities.externalsecret.apiVersion" -}}
{{- print "external-secrets.io/v1alpha1" -}}
{{- end -}}

{{/* Return the appropriate apiVersion for Secrets. */}}
{{- define "common.capabilities.secret.apiVersion" -}}
{{- print "v1" -}}
{{- end -}}

{{/* Return the appropriate apiVersion for Configmaps */}}
{{- define "common.capabilities.configmap.apiVersion" -}}
{{- print "v1" -}}
{{- end -}}

{{/* Return the appropriate apiVersion for Service Accounts. */}}
{{- define "common.capabilities.serviceaccount.apiVersion" -}}
{{- print "v1" -}}
{{- end -}}

{{/* Return the appropriate apiVersion for Services. */}}
{{- define "common.capabilities.service.apiVersion" -}}
{{- print "v1" -}}
{{- end -}}

{{/* Return the appropriate apiVersion for PersistentVolumeClaim. */}}
{{- define "common.capabilities.pvc.apiVersion" -}}
{{- print "v1" -}}
{{- end -}}

{{/* Return the appropriate apiVersion for NetworkPolicy. */}}
{{- define "common.capabilities.networkpolicy.apiVersion" -}}
{{- print "networking.k8s.io/v1" -}}
{{- end -}}

{{/*
Returns true if the used Helm version is 3.3+.
A way to check the used Helm version was not introduced until version 3.3.0 with .Capabilities.HelmVersion, which contains an additional "{}}"  structure.
This check is introduced as a regexMatch instead of {{ if .Capabilities.HelmVersion }} because checking for the key HelmVersion in <3.3 results in a "interface not found" error.
**To be removed when the catalog's minimun Helm version is 3.3**
*/}}
{{- define "common.capabilities.supportsHelmVersion" -}}
{{- if regexMatch "{(v[0-9])*[^}]*}}$" (.Capabilities | toString ) }}
  {{- true -}}
{{- end -}}
{{- end -}}

{{/* Return the appropriate apiVersion for VerticalPodAutoscaler. */}}
{{- define "common.capabilities.verticalPodAutoscaler.apiVersion" -}}
{{- print "autoscaling.k8s.io/v1" -}}
{{- end -}}
