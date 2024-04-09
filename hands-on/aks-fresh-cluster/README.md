# Provisioning AKS Cluster using Terraform

## Prerequisite

- An Azure account with an active subscription
- Azure CLI
- Terraform

## Authenticate to Azure

```bash
az login

az account show

az account list --query "[?user.name=='<microsoft_account_email>'].{Name:name, ID:id, Default:isDefault}" --output Table

az account set --subscription "<subscription_id_or_subscription_name>"
```

## Create a service principal

```bash
chmod +x specify-service-cred.sh

# Run the scipt with you service name and subscription ID
## your_service_principal_name: input your target Service Principal Name
## your_subscription_id: input your target Subscription ID
specify-service-cred.sh "your_service_principal_name" "your_subscription_id"
```

## Deploy cluster

### Initialize Terraform

```bash
terraform init
```

### Terraform plan

```bash
terraform plan -out main.tfplan
```

### Terraform apply

```bash
terraform apply main.tfplan
```

## Check the result

- Verify if your AKS cluster is up and running!

```bash
resource_group_name=$(terraform output -raw resource_group_name)
az aks list --resource-group $resource_group_name --query "[].{\"K8s cluster name\":name}" --output table
# NOTE: Do not commit the `./k8s_config/azurek8s` file
# I've already added the `k8s_config` folder to the .gitignore. But just for sure!
mkdir k8s_config
echo "$(terraform output kube_config)" > ./k8s_config/azurek8s
```

- Streamline your k8s config

```bash
chmod +x streamline_k8s_config.sh
./streamline_k8s_config.sh ./k8s_config/azurek8s
```

- Accessing your cluster

```bash
export KUBECONFIG=./k8s_config/azurek8s
kubectl get nodes
kubectl top nodes
```

- You now can see the output like this, congratulations!

```bash
➜  terraform-aks-cluster git:(issue-86) ✗ export KUBECONFIG=./k8s_config/azurek8s
➜  terraform-aks-cluster git:(issue-86) ✗ kubectl get nodes
NAME                                STATUS   ROLES   AGE   VERSION
aks-agentpool-28459652-vmss000000   Ready    agent   12m   v1.27.9
aks-agentpool-28459652-vmss000001   Ready    agent   11m   v1.27.9
➜  terraform-aks-cluster git:(issue-86) ✗ kubectl top nodes
NAME                                CPU(cores)   CPU%   MEMORY(bytes)   MEMORY%
aks-agentpool-28459652-vmss000000   118m         6%     1346Mi          29%
aks-agentpool-28459652-vmss000001   166m         8%     998Mi           21%
➜  terraform-aks-cluster git:(issue-86) ✗
```

## Delete AKS resources

```bash
terraform plan -destroy -out main.destroy.tfplan
terraform apply main.destroy.tfplan
```
