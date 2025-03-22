package test

import (
    "testing"
    "github.com/gruntwork-io/terratest/modules/terraform"
    "github.com/stretchr/testify/assert"
)

func TestResourceGroupOutput(t *testing.T) {
   // Define Terraform options
    opts := &terraform.Options{
        TerraformDir: "../todoapp_infra", // Path to your Terraform code
    }

    // Ensure resources are destroyed after the test
    defer terraform.Destroy(t, opts)

    // Initialize and apply Terraform configuration
    terraform.InitAndApply(t, opts)


    // Get the output value
    rgID := terraform.Output(t, opts, "rg_ids")

    // Verify the output is as expected
    assert.Equal(t, "map[rg-dev-devopsinsiders:/subscriptions/3b320a7e-555b-4ef4-8b4b-e6ea28e0828e/resourceGroups/rg-dev-devopsinsiders]", rgID)
}

