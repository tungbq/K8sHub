# Deploy MYSQL on Azure - with AKS

Deploy a SQL Server container cluster on AKS with Azure disk

## Prerequisite

- An Azure account with an active subscription
- A AKS cluster. For more information on creating and connecting to a Kubernetes cluster in AKS with kubectl, see [aks-fresh-cluster](../aks-fresh-cluster/)
- Azure CLI.

## Deloy

```bash
chmod +x mysql_deploy.sh
./mysql_deploy.sh
```

## Verify SQL

### Install SQL tool if needed: https://learn.microsoft.com/en-us/sql/linux/sql-server-linux-setup-tools

```bash
# Get EXTERNAL-IP
kubectl get services
## Now replace the external IP by yours
sqlcmd -S <External IP Address> -U sa -P "MyC0m9l&xP@ssw0rd"

```

- Result would looks like:

```sql
1> PRINT "Length: 5"" 7'";
2> GO
Length: 5" 7'
1>
```

## Troubleshooting

- SSL Provider: [error:0A000086:SSL routines::certificate verify failed: Adding `-C`

```bash
sqlcmd -S <External IP Address> -U sa -P "MyC0m9l&xP@ssw0rd" -C
```

## Cleanup

Remove and teardown cluster as per instruction in [aks-fresh-cluster](../aks-fresh-cluster/)
