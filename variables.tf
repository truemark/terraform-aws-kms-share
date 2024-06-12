variable "tags" {
  description = "A map of tags to add to all resources."
  type        = map(string)
  default     = {}
}

variable "description" {
  description = "The description of the key as viewed in AWS console."
  type        = string
}

variable "key_usage" {
  description = "Specifies the intended use of the key. Valid values: ENCRYPT_DECRYPT or SIGN_VERIFY. Defaults to ENCRYPT_DECRYPT"
  type        = string
  default     = "ENCRYPT_DECRYPT"
}

variable "customer_master_key_spec" {
  description = "Specifies whether the key contains a symmetric key or an asymmetric key pair and the encryption algorithms or signing algorithms that the key supports. Valid values: SYMMETRIC_DEFAULT, RSA_2048, RSA_3072, RSA_4096, ECC_NIST_P256, ECC_NIST_P384, ECC_NIST_P521, or ECC_SECG_P256K1. Defaults to SYMMETRIC_DEFAULT"
  type        = string
  default     = "SYMMETRIC_DEFAULT"
}

variable "is_enabled" {
  description = "Specifies whether the key is enabled. Defaults to true."
  type        = bool
  default     = true
}

variable "enable_key_rotation" {
  description = "Specifies whether key rotation is enabled. Defaults to false."
  type        = bool
  default     = false
}

variable "deletion_window_in_days" {
  description = "Duration in days after which the key is deleted after destruction of the resource, must be between 7 and 30 days. Defaults to 30 days."
  type        = number
  default     = 30
}

variable "alias_name" {
  description = "The display name of the alias. The name must start with the word \"alias\" followed by a forward slash (alias/)"
  type        = string
}

variable "identifiers" {
  description = "AWS account identifiers. ex. arn:aws:iam::444455556666:root, arn:aws:iam::444455556666:role/ExampleRole, arn:aws:iam::444455556666:user/ExampleUser"
  type        = list(string)
  default     = []
}
