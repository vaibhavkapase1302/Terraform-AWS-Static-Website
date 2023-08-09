# Terraform-AWS-Static-Website
This Terraform project sets up an AWS S3 bucket to host a static website. It creates an S3 bucket, configures ownership controls, public access settings, and uploads website content. The website is configured with an index page and an error page.

## Prerequisites

Before you begin, make sure you have the following:

- An AWS account and IAM credentials with appropriate permissions.
- Terraform installed on your local machine.

## Usage

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/your-username/Terraform-AWS-Static-Website.git
   ```

   ```bash
   cd Terraform-AWS-Static-Website
   ```

   
## Project Structure

The project consists of Terraform code files that define and configure the AWS resources for hosting the static website. Here's an overview of the project structure:

- `provider.tf`: Specifies the provider and its configuration, such as the AWS provider with version.
- `main.tf`: Contains the main Terraform configuration for creating AWS resources, including the S3 bucket, ownership controls, public access settings, objects, and website configuration.
- `variables.tf`: Defines variables used in the Terraform configuration, such as the S3 bucket name.
- `index.html`, `error.html`, `profile.JPG`: Sample website content files that will be uploaded to the S3 bucket.
- `README.md`: Provides project documentation and usage instructions.
- `CONTRIBUTING.md` (optional): Guidelines for contributing to the project.
