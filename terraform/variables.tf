variable "ibm_cloud_org" {
  type = string
}

variable "ibm_cloud_space" {
  type = string
}

variable "ibm_cloud_api_key" {
  type = string
}

variable "webhook_to_slack" {
  type = string
}

variable "region" {
  type    = string
  default = "us-south"
}

variable "namespace" {
  type    = string
  default = "ibm-daniels-workspace"
}

variable "clustername" {
  type    = string
  default = "tfcluster-daniel"
}

variable "datacenter" {
  type    = string
  default = "mil01"
}

