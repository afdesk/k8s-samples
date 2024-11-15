### Result

```sh
2024-11-15T23:40:09+06:00	DEBUG	Default config file "file_path=trivy.yaml" not found, using built in values
2024-11-15T23:40:09+06:00	DEBUG	Parsed severities	severities=[UNKNOWN LOW MEDIUM HIGH CRITICAL]
2024-11-15T23:40:09+06:00	DEBUG	Ignore statuses	statuses=[]
2024-11-15T23:40:09+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: apps/v1, Resource=deployments - deployments.apps is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"deployments\" in API group \"apps\" at the cluster scope"
2024-11-15T23:40:09+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: /v1, Resource=pods - pods is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"pods\" in API group \"\" at the cluster scope"
2024-11-15T23:40:09+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: apps/v1, Resource=replicasets - replicasets.apps is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"replicasets\" in API group \"apps\" at the cluster scope"
2024-11-15T23:40:09+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: /v1, Resource=replicationcontrollers - replicationcontrollers is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"replicationcontrollers\" in API group \"\" at the cluster scope"
2024-11-15T23:40:09+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: apps/v1, Resource=statefulsets - statefulsets.apps is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"statefulsets\" in API group \"apps\" at the cluster scope"
2024-11-15T23:40:09+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: apps/v1, Resource=daemonsets - daemonsets.apps is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"daemonsets\" in API group \"apps\" at the cluster scope"
2024-11-15T23:40:09+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: batch/v1, Resource=cronjobs - cronjobs.batch is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"cronjobs\" in API group \"batch\" at the cluster scope"
2024-11-15T23:40:09+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: batch/v1, Resource=jobs - jobs.batch is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"jobs\" in API group \"batch\" at the cluster scope"
2024-11-15T23:40:09+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: /v1, Resource=services - services is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"services\" in API group \"\" at the cluster scope"
2024-11-15T23:40:09+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: /v1, Resource=serviceaccounts - serviceaccounts is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"serviceaccounts\" in API group \"\" at the cluster scope"
2024-11-15T23:40:10+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: /v1, Resource=configmaps - configmaps is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"configmaps\" in API group \"\" at the cluster scope"
2024-11-15T23:40:10+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: rbac.authorization.k8s.io/v1, Resource=roles - roles.rbac.authorization.k8s.io is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"roles\" in API group \"rbac.authorization.k8s.io\" at the cluster scope"
2024-11-15T23:40:10+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: rbac.authorization.k8s.io/v1, Resource=rolebindings - rolebindings.rbac.authorization.k8s.io is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"rolebindings\" in API group \"rbac.authorization.k8s.io\" at the cluster scope"
2024-11-15T23:40:10+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: networking.k8s.io/v1, Resource=networkpolicies - networkpolicies.networking.k8s.io is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"networkpolicies\" in API group \"networking.k8s.io\" at the cluster scope"
2024-11-15T23:40:10+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: networking.k8s.io/v1, Resource=ingresses - ingresses.networking.k8s.io is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"ingresses\" in API group \"networking.k8s.io\" at the cluster scope"
2024-11-15T23:40:11+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: /v1, Resource=resourcequotas - resourcequotas is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"resourcequotas\" in API group \"\" at the cluster scope"
2024-11-15T23:40:11+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: /v1, Resource=limitranges - limitranges is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"limitranges\" in API group \"\" at the cluster scope"
2024-11-15T23:40:11+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: rbac.authorization.k8s.io/v1, Resource=clusterroles - clusterroles.rbac.authorization.k8s.io is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"clusterroles\" in API group \"rbac.authorization.k8s.io\" at the cluster scope"
2024-11-15T23:40:11+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: rbac.authorization.k8s.io/v1, Resource=clusterrolebindings - clusterrolebindings.rbac.authorization.k8s.io is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"clusterrolebindings\" in API group \"rbac.authorization.k8s.io\" at the cluster scope"
2024-11-15T23:40:11+06:00	ERROR	Unable to list resources	error="failed listing resources for gvr: /v1, Resource=nodes - nodes is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"nodes\" in API group \"\" at the cluster scope"
2024-11-15T23:40:11+06:00	ERROR	Unable to list node resources	error="nodes is forbidden: User \"system:serviceaccount:rbac-test:limiteduser\" cannot list resource \"nodes\" in API group \"\" at the cluster scope"
2024-11-15T23:40:11+06:00	INFO	Node scanning is enabled
2024-11-15T23:40:11+06:00	INFO	If you want to disable Node scanning via an in-cluster Job, please try '--disable-node-collector' to disable the Node-Collector job.
2024-11-15T23:40:11+06:00	DEBUG	DB update was skipped because the local DB is the latest
2024-11-15T23:40:11+06:00	DEBUG	DB info	schema=2 updated_at=2024-11-15T14:49:10.83640888Z next_update=2024-11-16T14:49:10.83640874Z downloaded_at=2024-11-15T15:58:54.905366Z
0 [______________________________________________________________________________________________________________________________________________________] ?% ? p/s

Summary Report for mycontext


Workload Assessment
┌───────────┬──────────┬───────────────────┬───────────────────┬───────────────────┐
│ Namespace │ Resource │  Vulnerabilities  │ Misconfigurations │      Secrets      │
│           │          ├───┬───┬───┬───┬───┼───┬───┬───┬───┬───┼───┬───┬───┬───┬───┤
│           │          │ C │ H │ M │ L │ U │ C │ H │ M │ L │ U │ C │ H │ M │ L │ U │
└───────────┴──────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┘
Severities: C=CRITICAL H=HIGH M=MEDIUM L=LOW U=UNKNOWN


Infra Assessment
┌───────────┬──────────┬───────────────────┬───────────────────┬───────────────────┐
│ Namespace │ Resource │  Vulnerabilities  │ Misconfigurations │      Secrets      │
│           │          ├───┬───┬───┬───┬───┼───┬───┬───┬───┬───┼───┬───┬───┬───┬───┤
│           │          │ C │ H │ M │ L │ U │ C │ H │ M │ L │ U │ C │ H │ M │ L │ U │
└───────────┴──────────┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┴───┘
Severities: C=CRITICAL H=HIGH M=MEDIUM L=LOW U=UNKNOWN


RBAC Assessment
┌───────────┬──────────┬───────────────────┐
│ Namespace │ Resource │  RBAC Assessment  │
│           │          ├───┬───┬───┬───┬───┤
│           │          │ C │ H │ M │ L │ U │
└───────────┴──────────┴───┴───┴───┴───┴───┘
Severities: C=CRITICAL H=HIGH M=MEDIUM L=LOW U=UNKNOWN


```