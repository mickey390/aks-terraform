# aks-terraform

## Overview

- Create AKS Cluster　(For personal use)
- Addon: `oms_agent` enabled
- Terraform backup is local machine

## Using

### Required Tooling

- Terraform
- Azure CLI
- `kubectl`

### Running

```
sw_vers
ProductName:	Mac OS X
ProductVersion:	10.14.1
BuildVersion:	18B75

# set secret
export TF_VAR_client_id=<your-client-id>
export TF_VAR_client_secret=<your-client-secret>

# 初期化
terraform init

# plan
terraform plan -out out.plan

# apply
terraform apply out.plan

# get credential
echo "$(terraform output kube_config)" > ./azurek8s

# check cluster
kubectl get pod --all-namespaces --kubeconfig ./azurek8s
```

## Reference

- https://docs.microsoft.com/ja-jp/azure/terraform/terraform-create-k8s-cluster-with-tf-and-aks
- https://github.com/lawrencegripper/azure-aks-terraform
