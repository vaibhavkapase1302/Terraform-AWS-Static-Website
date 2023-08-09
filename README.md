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



## Configure AWS Credentials: 
Ensure you have your AWS credentials set up. You can configure them using environment variables, the AWS CLI, or other appropriate methods.

```bash 
aws configure
```

```bash 
Access key ID:
```

```bash
Secret access key:
```


## Project Highlights

- **Infrastructure as Code:** Leverage the power of Terraform to define your AWS infrastructure as code. The project's configuration files (`main.tf` and `variables.tf`) allow you to specify your website's resources and settings in a declarative manner.

- **Website Hosting:** The project creates an AWS S3 bucket configured to serve as a static website. You can easily upload your HTML, CSS, JavaScript, and media files to showcase your website content.

- **Ownership Controls:** The use of AWS S3 bucket ownership controls ensures that object ownership preferences are set to "BucketOwnerPreferred," helping you maintain control over your data.

- **Public Access Control:** Fine-tune public access to your S3 bucket with customizable settings. The project implements public access block configurations, allowing you to control public ACLs and policies.

- **Easy Customization:** Adjust the project to your needs by modifying the `variables.tf` file. Change the S3 bucket name, adjust ownership controls, and tailor the website's content to reflect your vision.

- **Website Configuration:** Define the default index document and error document for your static website. Enjoy the convenience of a streamlined setup for your web content.

- **Contributor-Friendly:** The project includes a `CONTRIBUTING.md` guide, welcoming contributions from the community. Whether you're fixing a bug, enhancing functionality, or suggesting improvements, your contributions are valued.

- **Clean and Organized Structure:** Benefit from a clear project structure that separates configuration files, website content, and documentation. This makes collaboration and maintenance a breeze.



## Terraform Commands

This file contains the step-by-step instructions for using the Terraform commands to initialize, review, apply, and destroy a static website.

### Initialize Terraform
The first step is to initialize Terraform by running the following command:

```tf
terraform init
```

This will create a .terraform directory in the current directory and download the necessary Terraform modules.


## Apply the Terraform Configuration

To apply the Terraform configuration, run the following command:

```tf
terraform apply
```

### Review and Apply
Once Terraform is initialized, you can review the planned changes by running the following command:

```tf
terraform plan
````

This will output a detailed plan of the changes that Terraform will make. You can then review the plan and make any necessary changes.

### To apply the Terraform configuration, run the following command:

```tf
terraform apply
```

This will create or update the resources specified in the Terraform configuration.

### Access Your Website

After applying the Terraform configuration, the S3 bucket will be created and the website content will be uploaded. You can access your static website at the following URL:

[http://myterraformprojectwebsite2.s3-website.ap-south-1.amazonaws.com](http://myterraformprojectwebsite2.s3-website.ap-south-1.amazonaws.com)


### Clean Up

To remove the resources created by Terraform, run the following command:

```tf
terraform destroy
```

This will delete the S3 bucket and the website content. You will be prompted to confirm the destruction.

- Warning: This command will delete all of the resources created by Terraform. Make sure that you are sure you want to destroy the resources before running this command.
