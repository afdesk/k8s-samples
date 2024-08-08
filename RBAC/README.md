# RBAC (Role-based access control)

## Developer Role

Allow to
* View PODs
* Create PODs
* Delete PODs
* Create Secrets

```sh
$ kubectl get roles
NAME        CREATED AT
developer   2024-08-08T07:10:57Z

$ kubectl get rolebindings4
NAME                        ROLE             AGE
devuser-developer-binding   Role/developer   87s

$ kubectl describe role developer
Name:         developer
Labels:       <none>
Annotations:  <none>
PolicyRule:
  Resources  Non-Resource URLs  Resource Names  Verbs
  ---------  -----------------  --------------  -----
  secrets    []                 []              [create]
  pods       []                 []              [get watch list create update delete]

$ kubectl describe rolebindings devuser-developer-binding
Name:         devuser-developer-binding
Labels:       <none>
Annotations:  <none>
Role:
  Kind:  Role
  Name:  developer
Subjects:
  Kind  Name      Namespace
  ----  ----      ---------
  User  dev-user

$ kubectl auth can-i create deployments
yes

$ kubectl auth can-i create deployments --as dev-user
no

$ kubectl auth can-i create deployments --as dev-user --namespace prod
no
```

## Access to specific resources (pods...)
```yaml
apiVersion: rbac.authorization.k8s.io/v1
kind: Role
metadata:
  name: developer

rules:
  - apiGroups: [""]
    resources: ["pods"]
    verbs: ["get", "watch", "list", "create", "update", "delete"]
    resourceNames: ["myred", "mywhite"]
```