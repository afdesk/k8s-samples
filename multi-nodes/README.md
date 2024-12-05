## Run KinD with several nodes

```sh
kind delete cluster --name multinodes-kind && kind create cluster --name multinodes-kind --config kind-config.yaml
```