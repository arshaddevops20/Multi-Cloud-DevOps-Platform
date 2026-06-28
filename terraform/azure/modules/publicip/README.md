# Azure Public IP Module

Creates a reusable Standard Public IP.

## Used By

- Azure Bastion
- NAT Gateway
- Application Gateway
- Azure Firewall
- VPN Gateway
- Azure Load Balancer

## Outputs

- Public IP ID
- Public IP Address


               PublicIP Module
                      │
      ┌───────────────┼───────────────┐
      │               │               │
      ▼               ▼               ▼
    Bastion        NAT Gateway    App Gateway