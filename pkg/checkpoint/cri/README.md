# Vendored CRI APIs

We copy generated CRI APIs for a couple reasons:
* When CRI promotes a version, it sometimes deletes the old alpha version.
* Prevents importing `k8s.io/kubernetes`.

The various versions of CRI are taken from:

* v1alpha1: https://github.com/kubernetes/kubernetes/tree/v1.9.6/pkg/kubelet/apis/cri
* v1alpha2: https://github.com/kubernetes/cri-api/tree/release-1.16/pkg/apis
