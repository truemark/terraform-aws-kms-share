data "aws_iam_policy_document" "kms" {
  statement {
    sid = "Allow external access to CMK"
    effect = "Allow"
    principals {
      identifiers = var.identifiers
      type = "AWS"
    }
    actions = [
      "kms:Encrypt",
      "kms:Decrypt",
      "kms:ReEncrypt*",
      "kms:GenerateDataKey*",
      "kms:DescribeKey"
    ]
    resources = ["*"]
  }
}

resource "aws_kms_key" "kms" {
  description = var.description
  key_usage = var.key_usage
  customer_master_key_spec = var.customer_master_key_spec
  is_enabled = var.is_enabled
  enable_key_rotation = var.enable_key_rotation
  deletion_window_in_days = var.deletion_window_in_days
  tags = var.tags
  policy = data.aws_iam_policy_document.kms.json
}

resource "aws_kms_alias" "kms" {
  name = "alias/${var.alias_name}"
  target_key_id = aws_kms_key.kms.id
}
