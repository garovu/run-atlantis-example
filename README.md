# RunAtlantis Terraform Automation Example

This repository provides an example of how to use RunAtlantis for Terraform automation.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) installed
- [Atlantis](https://www.runatlantis.io/) installed and configured
- A GitHub repository to host your Terraform code

## Setup

1. **Clone the repository:**

    ```sh
    git clone https://github.com/garovu/run-atlantis-example.git
    cd run-atlantis-example
    ```

2. **Configure Atlantis:**

    Create an `atlantis.yaml` file in the root of your repository with the following content:

    ```yaml
    version: 3
    projects:
      - name: example
        dir: .
        workspace: default
        autoplan:
          when_modified: ["*.tf", "*.tfvars"]
          enabled: true
    ```

3. **Create Terraform configuration:**

    Add your Terraform configuration files in the repository. For example, create a `main.tf` file:

    ```hcl
    provider "aws" {
      region = "us-west-2"
    }

    resource "aws_s3_bucket" "example" {
      bucket = "my-example-bucket"
      acl    = "private"
    }
    ```

## Usage

1. **Initialize Terraform:**

    ```sh
    terraform init
    ```

2. **Plan and apply changes:**

    Commit and push your changes to the repository. Atlantis will automatically run `terraform plan` and `terraform apply` based on the configuration in `atlantis.yaml`.

3. **Review and approve:**

    Review the plan output in the pull request comments and approve the changes to apply them.

## Contributing

Feel free to open issues or submit pull requests if you find any bugs or have suggestions for improvements.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
