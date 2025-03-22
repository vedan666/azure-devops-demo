# Azure DevOps Terraform Demo

This repository demonstrates how to use **Terraform** with **Azure DevOps Pipelines** and **Terratest** for infrastructure provisioning and testing on Microsoft Azure.

---

## 📁 Project Structure

```
.
├── .azure-pipelines/       # Azure DevOps pipeline configuration
│   └── pipeline.yml
├── modules/
│   └── ResourceGroup/      # Terraform module to create a Resource Group
│       ├── main.tf
│       └── variables.tf
├── todoapp_infra/          # Main infrastructure configuration
│   ├── badcode.tf          # Example of intentionally broken code
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── dev.terraform.tfvars
│   └── prod.terraform.tfvars
├── terratest/              # Automated tests using Terratest (Go)
│   ├── main_test.go
│   ├── go.mod
│   └── go.sum
├── .gitignore
├── LICENSE
└── README.md
```

---

## 🚀 Getting Started

### Prerequisites

- [Terraform](https://www.terraform.io/downloads)
- [Go](https://go.dev/dl/)
- Azure Subscription
- Azure DevOps organization

### Initialize Terraform

```bash
cd todoapp_infra
terraform init
```

### Validate and Format

```bash
terraform fmt
terraform validate
```

### Plan and Apply (Development Environment)

```bash
terraform plan -var-file="dev.terraform.tfvars"
terraform apply -var-file="dev.terraform.tfvars"
```

---

## ⚙️ Azure DevOps Pipeline

An example Azure DevOps pipeline is defined in `.azure-pipelines/pipeline.yml`. It typically includes:

- Terraform formatting and linting
- Terraform plan and apply steps
- Environment-specific deployments

### To Use:

1. Create a pipeline in Azure DevOps.
2. Connect it to this repository.
3. Use the existing YAML pipeline configuration when prompted.

---

## 🧪 Terratest Integration

Infrastructure is tested using [Terratest](https://terratest.gruntwork.io/):

```bash
cd terratest
go test -v
```

These tests validate the deployed resources using Go-based test cases.

---

## 📃 Notes

- The file `badcode.tf` is intentionally broken to test pipeline validations.
- Separate variable files (`dev.terraform.tfvars`, `prod.terraform.tfvars`) allow environment-specific configurations.
- Modules are designed to be reusable.

---

## 📄 License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.

