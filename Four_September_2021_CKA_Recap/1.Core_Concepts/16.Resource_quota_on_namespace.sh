we can specify ResourceQuota in namespace level to restrict CPU and Memory resources


apiVersion: v1
kind: ResourceQuota
metadata: 
  name: compute-quota 
  namespace: dev 
spec:
  hard:
    pods: "10"
    requests.cpu: "4"
    requests.memory: 5Gi
    limits.cpu: "10"
    limits.memory: 10Gi

