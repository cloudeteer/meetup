# Meetup

<b>[CLOUDNATICS](https://www.meetup.com/cloudnatics/).</b><br>
MeetUp Code Repository

## Schedule

| Date | Topic | Owner |
|--|--|--|
05.11.2020 | **Terraform on Steroids** | Sunny Nazar |

<br>
<br>

## Table of Contents

  - [Table of Contents](#table-of-contents)
  - [Prerequisites](#prerequisites)
  - [Terraform startup material](#terraform-startup-material)
    - [HashiCorp Configuration Language](#hashicorp-configuration-language)
    - [Terraform ecosystem](#Terraform-ecosystem)
    - [Terraform Code Quality](#terraform-code-quality)
  - [Modules](#modules)
  - [Azure Landing Zone](#azure-landing-zone)

## Prerequisites

As part of this meetup, we will be using [HashiCorp Terraform](https://www.terraform.io), [Amazon Web Services](https://aws.amazon.com) and [Azure](https://azure.microsoft.com/en-us/).

To install terraform, please go through [Learn Guide](https://learn.hashicorp.com/terraform/getting-started/install.html).

You will find instructions for macOS (using `brew`), Windows (using `choco`) as well as a manual installation path.

## Terraform startup material

This section contains a collection of links that will help you to understand about today's meetup session.

### HashiCorp Configuration Language

- repository: [hashicorp/hcl](https://github.com/hashicorp/hcl/tree/hcl2)
- intermediate HCL: [Configuration Languages in HCL2](https://www.hashicorp.com/resources/intermediate-hcl-configuration-languages-in-hcl2/)

### Terraform ecosystem

- TF CLI commands [terraform.io/docs/commands/index.html](https://www.terraform.io/docs/commands/index.html)
- TF variables and type constraints: [terraform.io/docs/configuration/variables.html](https://www.terraform.io/docs/configuration/variables.html#type-constraints)
- TF variable definition files: [terraform.io/docs/configuration/variables.html](https://www.terraform.io/docs/configuration/variables.html#variable-definitions-tfvars-files)
- Terraform State: [terraform.io/docs/state/index.html](https://www.terraform.io/docs/state/index.html)


### Terraform Code Quality

Before `plan` and `apply`, please always clean up your code:

- use [terraform fmt](https://www.terraform.io/docs/commands/fmt.html) to rewrite Terraform configuration files to canonical format and style.
- use [terraform validate](https://www.terraform.io/docs/commands/validate.html) to validate the configuration syntax and internal consistency.

## Modules

- use modules as building blocks as much as possible.
- module documentation: [terraform.io/docs/configuration/modules.html](https://www.terraform.io/docs/configuration/modules.html)
- module registry: [registry.terraform.io](https://registry.terraform.io)
- Learn Guide: Modules on [learn.hashicorp.com/terraform/modules/modules-overview](https://learn.hashicorp.com/terraform/modules/modules-overview)

## Azure Landing Zone

- Azure Landing zone deployments based on CAF with terraform [https://github.com/Azure/caf-terraform-landingzones](https://github.com/Azure/caf-terraform-landingzones)
- CAF rover image [https://github.com/aztfmod/rover](https://github.com/aztfmod/rover)

_(c) 2020, Cloudeteer GmbH_