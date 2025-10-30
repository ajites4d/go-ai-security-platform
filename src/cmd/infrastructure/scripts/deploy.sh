#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TERRAFORM_DIR="$SCRIPT_DIR/../terraform/aws"

echo "🚀 Starting deployment..."

case "${1}" in
    init)
        echo "📦 Initializing Terraform..."
        cd "$TERRAFORM_DIR"
        terraform init
        ;;
    plan)
        echo "📋 Generating Terraform plan..."
        cd "$TERRAFORM_DIR"  
        terraform plan
        ;;
    apply)
        echo "🛠️ Applying Terraform configuration..."
        cd "$TERRAFORM_DIR"
        terraform apply -auto-approve
        ;;
    destroy)
        echo "🧹 Destroying infrastructure..."
        cd "$TERRAFORM_DIR"
        terraform destroy -auto-approve
        ;;
    *)
        echo "❌ Usage: $0 {init|plan|apply|destroy}"
        exit 1
        ;;
esac

echo "✅ Operation completed!"
