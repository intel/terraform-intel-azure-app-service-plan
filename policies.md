<p align="center">
  <img src="./images/logo-classicblue-800px.png" alt="Intel Logo" width="250"/>
</p>

# Intel® Cloud Optimization Modules for Terraform  

© Copyright 2022, Intel Corporation

## HashiCorp Sentinel Policies

This file documents the HashiCorp Sentinel policies that apply to this module

## Policy 1

Description: Premium v3 Service Plans features faster processors, Hyper-V virtualization and support for VNet connectivity

Resource type: azurerm_service_plan

Parameter: sku_name

Allowed Types: P1v3,P2v3,P3v3,EP1,EP2,EP3
