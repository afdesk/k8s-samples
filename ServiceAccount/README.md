# Create a new service account

### Create a new service account
```sh
$ kubectl create serviceaccount my-user
```
### Create a secret
```sh
$ kubectl create secret generic my-user-secret --from-literal=token=$(kubectl create token my-user --duration=8760h) --namespace=default

```
### Get a token
```sh
$ kubectl get secret my-user-secret -o jsonpath='{.data.token}' | base64 --decode
```

## Set up `kubeconfig`
### Create `kubeconfig`
```sh
$ kubectl config set-cluster kubernetes-cluster --certificate-authority=/home/etc/kubernetes/pki/ca.crt --server=https://192.168.49.2:8443 --kubeconfig=user-kubeconfig
```
### Add credentials
```sh
$ kubectl config set-credentials my-user --kubeconfig=user-kubeconfig --token=eyJhbGciOiJSUzI1NiIsImtpZCI6Il95azlaaUJEWVBCSnFDcGg2WVRMYUhxSy1NcmUCmWlDW6kUnnrYMrONNng
```
### Create a context
```sh
$ kubectl config set-context my-user-context --cluster=kubernetes-cluster --namespace=default --user=my-user --kubeconfig=user-kubeconfig
```

### Select a context
```sh
$ kubectl config use-context my-user-context --kubeconfig=user-kubeconfig

```

## Using `kubeconfig`
```sh
$ kubectl --kubeconfig=user-kubeconfig get pods
```
or
```sh
export KUBECONFIG=user-kubeconfig
```