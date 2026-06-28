# Azure Bastion Module

## Resources

- Azure Bastion Host
- Standard Public IP

## Features

- Standard SKU
- Copy/Paste
- File Copy
- IP Connect
- Native Client Support
- Tunneling

## Outputs

- Bastion ID
- Bastion Name
- Public IP


                    Internet
                        │
              Application Gateway
                        │
                   AKS Cluster
                        │
                 Private Subnet
                        │
                 NAT Gateway
                        │
                     Internet

────────────────────────────────────────

Azure Bastion
      │
AzureBastionSubnet
      │
Private VM