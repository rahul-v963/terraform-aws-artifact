# Secure AWS Artifact Store with Terraform

## Overview

This project provisions a secure Amazon S3 bucket using Terraform and validates the Terraform configuration through GitHub Actions.

It demonstrates Infrastructure as Code (IaC), AWS storage security, provider version management, and automated configuration validation.

## Architecture

Terraform provisions an S3 bucket in the AWS `ap-south-1` region with:

- S3 Block Public Access
- Bucket-owner-enforced object ownership
- Server-side encryption using SSE-S3 (AES-256)
- S3 versioning
- Lifecycle cleanup for noncurrent versions and incomplete multipart uploads
- A bucket policy denying requests over insecure transport
- Standard resource tags

## Technology Stack

- Terraform
- AWS S3
- AWS CLI
- Git and GitHub
- GitHub Actions

## CI Workflow

The GitHub Actions workflow runs on pushes to `main` and pull requests. It checks Terraform formatting, initializes the provider without initializing a remote backend, and validates the configuration.

The workflow does not deploy infrastructure or require AWS credentials.

## Deploy Locally

```bash
terraform fmt -check -recursive
terraform init
terraform validate
terraform plan
terraform apply
```

Review the plan before approving an apply.

## Verify

```bash
terraform output
terraform state list
```

Use AWS CLI commands to verify the bucket's encryption, versioning, public-access settings, lifecycle configuration, ownership controls, tags, and policy.

## Cleanup

```bash
terraform destroy
```

Review the destruction plan and confirm before proceeding. Ensure any bucket objects and object versions have been removed if necessary.

## Deployment Evidence

Screenshots documenting the deployed infrastructure and validation steps are available here:

[View Terraform and AWS Evidence](docs/screenshots/aws-terraform-evidence.docx)

The evidence includes AWS S3 security configuration, versioning, encryption, lifecycle settings, Terraform state, and GitHub Actions CI validation.

Additional Terraform plan and state verification screenshots demonstrate the infrastructure's current status.


## Future Improvements

- Remote state storage with appropriate locking and access controls
- Pull-request plan review
- Terraform security scanning
- Automated infrastructure tests
- Least-privilege deployment using GitHub Actions OIDC
- Separate development and production environments

