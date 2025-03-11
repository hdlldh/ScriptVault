# Kubernetes CLI (kubectl) Cheatsheet

## Managing Kubernetes Clusters
- Check cluster information:
  ```sh
  kubectl cluster-info
  ```
- View all nodes in the cluster:
  ```sh
  kubectl get nodes
  ```
- Get detailed node information:
  ```sh
  kubectl describe node <node_name>
  ```

## Working with Pods
- List all pods:
  ```sh
  kubectl get pods
  ```
- List pods with wide output:
  ```sh
  kubectl get pods -o wide
  ```
- Describe a specific pod:
  ```sh
  kubectl describe pod <pod_name>
  ```
- Get logs from a pod:
  ```sh
  kubectl logs <pod_name>
  ```
- Get logs from a specific container in a pod:
  ```sh
  kubectl logs <pod_name> -c <container_name>
  ```
- Execute a command in a running pod:
  ```sh
  kubectl exec -it <pod_name> -- /bin/sh
  ```
- Delete a pod:
  ```sh
  kubectl delete pod <pod_name>
  ```

## Working with Deployments
- List deployments:
  ```sh
  kubectl get deployments
  ```
- Describe a deployment:
  ```sh
  kubectl describe deployment <deployment_name>
  ```
- Scale a deployment:
  ```sh
  kubectl scale deployment <deployment_name> --replicas=<num>
  ```
- Update a deployment:
  ```sh
  kubectl set image deployment/<deployment_name> <container_name>=<new_image>
  ```
- Rollback a deployment:
  ```sh
  kubectl rollout undo deployment <deployment_name>
  ```
- Restart a deployment:
  ```sh
  kubectl rollout restart deployment <deployment_name>
  ```

## Working with Services
- List services:
  ```sh
  kubectl get services
  ```
- Describe a service:
  ```sh
  kubectl describe service <service_name>
  ```
- Expose a deployment as a service:
  ```sh
  kubectl expose deployment <deployment_name> --type=<type> --port=<port> --target-port=<target_port>
  ```
- Delete a service:
  ```sh
  kubectl delete service <service_name>
  ```

## Working with ConfigMaps and Secrets
- List ConfigMaps:
  ```sh
  kubectl get configmaps
  ```
- Describe a ConfigMap:
  ```sh
  kubectl describe configmap <configmap_name>
  ```
- Create a ConfigMap from a file:
  ```sh
  kubectl create configmap <configmap_name> --from-file=<file>
  ```
- List Secrets:
  ```sh
  kubectl get secrets
  ```
- Describe a Secret:
  ```sh
  kubectl describe secret <secret_name>
  ```
- Create a Secret from literal values:
  ```sh
  kubectl create secret generic <secret_name> --from-literal=<key>=<value>
  ```

## Working with Namespaces
- List namespaces:
  ```sh
  kubectl get namespaces
  ```
- Create a namespace:
  ```sh
  kubectl create namespace <namespace_name>
  ```
- Delete a namespace:
  ```sh
  kubectl delete namespace <namespace_name>
  ```
- Use a specific namespace for commands:
  ```sh
  kubectl config set-context --current --namespace=<namespace_name>
  ```

## Viewing Events and Resource Usage
- View cluster events:
  ```sh
  kubectl get events
  ```
- Get resource usage (if metrics-server is installed):
  ```sh
  kubectl top pods
  ```
  ```sh
  kubectl top nodes
  ```

## Working with Persistent Volumes
- List Persistent Volume Claims (PVCs):
  ```sh
  kubectl get pvc
  ```
- Describe a PVC:
  ```sh
  kubectl describe pvc <pvc_name>
  ```
- Delete a PVC:
  ```sh
  kubectl delete pvc <pvc_name>
  ```

## Applying and Managing Configurations
- Apply a configuration file:
  ```sh
  kubectl apply -f <file.yaml>
  ```
- Delete resources defined in a file:
  ```sh
  kubectl delete -f <file.yaml>
  ```
- View the difference before applying changes:
  ```sh
  kubectl diff -f <file.yaml>
  ```

## Troubleshooting
- Get detailed events and information about a pod:
  ```sh
  kubectl describe pod <pod_name>
  ```
- Show the last few logs from a pod:
  ```sh
  kubectl logs --tail=50 <pod_name>
  ```
- Show real-time logs from a pod:
  ```sh
  kubectl logs -f <pod_name>
  ```
- Run a temporary debugging pod:
  ```sh
  kubectl run debug --rm -it --image=busybox -- /bin/sh
  ```

