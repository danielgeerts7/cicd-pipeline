# Configure the IBM Provider
provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region           = var.region
}

# Create a namespace
resource "ibm_cr_namespace" "cr_namespace" {
  name = var.namespace
}

# IBM cluster
resource "ibm_container_cluster" "tfcluster" {
  name              = "tfcluster-daniel"
  datacenter        = "fra02" # Frankfurt, Germany
  machine_type      = "free"  # the free IBM worker node
  hardware          = "shared"
  public_vlan_id    = "vlan"
  private_vlan_id   = "vlan"
  no_subnet         = true
  kube_version      = "1.21.7"
  default_pool_size = 1 # max 1 worker node allowed
}