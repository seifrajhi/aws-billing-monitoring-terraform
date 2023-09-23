# AWS Billing Monitoring with Terraform: IAC for tracking and managing AWS expenses

![tf-aws-billing-alerts](assets/Create-AWS-Billing-Alarm-1.png)

This repository hosts a Terraform module designed to facilitate the establishment of AWS billing alerts. Once set up, it will promptly alert users in the event that AWS charges surpass predefined thresholds.

## Prerequisites
- [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli).
- [An AWS account](https://aws.amazon.com/console/).
- [AWS CLI installed configured](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html).

## Overview of the used AWS Services:

### AWS CloudWatch

[AWS CloudWatch](https://aws.amazon.com/cloudwatch/) is a monitoring and observability service. With CloudWatch, you can collect and access all your performance and operational data in form of logs and metrics from a single platform. This module uses CloudWatch to monitor your AWS billing and trigger an alarm when the specified thresholds are crossed.

### AWS SNS (Simple Notification Service)

[AWS SNS](https://aws.amazon.com/sns/) is a fully managed notification service. It allows you to send individual messages or to fan-out messages to large numbers of recipients. In the context of this module, SNS is used to send out notifications when the billing alarm in CloudWatch is triggered.

### AWS Billing

[AWS Billing](https://aws.amazon.com/aws-cost-management/aws-bill/) provides you with tools and features to pay for what you use, manage your costs, and budget your AWS costs. AWS charges can accumulate quickly depending on the services and the usage, hence monitoring the billing is crucial. This module helps in automating the monitoring process and alerts you before your bill goes beyond your expectations.



## Setup
1. **Clone the Repository**


You can clone this repository to your local machine using the following steps:

1. Open your terminal or command prompt.

2. Navigate to the directory where you want to clone the repository:

   ```
   cd /path/to/your/directory
   ```
3. Replace /path/to/your/directory with the actual path to your desired directory.

4. Clone the repository by running the following command:


```
git clone https://github.com/seifrajhi/aws-billing-monitoring-terraform.git
```
This will create a copy of the repository on your local machine.

Change your working directory to the cloned repository:

```
cd aws-billing-monitoring-terraform
```
Now you have successfully cloned the repository to your local machine and can start working with it.


2. **Initialize and apply IAC**

After navigating to the directory where you've cloned the repository, run:

```
Terrafrom init
```

After initializing, apply the Terraform configuration:

```
terrafomr apply 
```

Review the plan, and if everything looks good, proceed by typing `yes`.

## Usage
Modify the Terraform configuration as needed to fit your requirements. By default, alerts are set at $100 and $150, but you can adjust these values in the main Terraform file.

## Feedback and Contributions
Feedback, bug reports, and pull requests are welcomed. Feel free to raise an issue or submit a pull request.