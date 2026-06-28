# Azure NAT Gateway Module

## Resources Created

- Standard Static Public IP
- NAT Gateway
- NAT Gateway Public IP Association
- NAT Gateway Subnet Association

## Inputs

- Resource Group Name
- Location
- Private Subnet ID
- Project Name
- Environment
- Tags

## Outputs

- NAT Gateway ID
- NAT Gateway Name
- Public IP ID
- Public IP Name
- Public IP Address


Internet
    ▲
    │
Standard Public IP
    ▲
    │
NAT Gateway
    ▲
    │
Private Subnet
    ▲
    │
AKS Nodes / Private VMs