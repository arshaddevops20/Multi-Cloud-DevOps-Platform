# Azure Network Security Group Module

## Resources

- Public Network Security Group
- Private Network Security Group
- HTTP Rule
- HTTPS Rule
- Virtual Network Rule
- NSG Associations

## Inputs

- Resource Group
- Location
- Public Subnet ID
- Private Subnet ID

## Outputs

- Public NSG ID
- Private NSG ID


                Internet
                    │
          Public Subnet (NSG)
          Allow 80
          Allow 443
                    │
     Application Gateway (later)
                    │
──────────── Azure VNet ────────────
                    │
          Private Subnet (NSG)
          Allow VirtualNetwork
                    │
             Private VM
                    │
            NAT Gateway (later)