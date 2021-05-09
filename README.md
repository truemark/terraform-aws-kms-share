# AWS KMS Share

This terraform module is used to share a Customer Managed KMS key with an
external account. This is needed to be able to do things like create RDS
instances from snapshots created in another account.

## Quick Links
 * [AWS Terraform Documentation](https://registry.terraform.io/providers/hashicorp/aws/latest/docs)
 * [Allowing users in other accounts to use a CMK](https://docs.aws.amazon.com/kms/latest/developerguide/key-policy-modifying-external-accounts.html)
