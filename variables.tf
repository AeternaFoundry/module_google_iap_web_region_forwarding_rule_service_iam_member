variable "iap_web_region_forwarding_rule_service_iam_members" {
  description = <<EOT
Map of iap_web_region_forwarding_rule_service_iam_members, attributes below
Required:
    - forwarding_rule_region_service_name
    - member
    - role
Optional:
    - project
    - region
    - condition (block):
        - description (optional)
        - expression (required)
        - title (required)
EOT

  type = map(object({
    forwarding_rule_region_service_name = string
    member                              = string
    role                                = string
    project                             = optional(string)
    region                              = optional(string)
    condition = optional(object({
      description = optional(string)
      expression  = string
      title       = string
    }))
  }))
}

