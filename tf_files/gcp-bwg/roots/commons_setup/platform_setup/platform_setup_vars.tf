variable "project_name" {}
variable "credential_file" {}
variable "region" {}
variable "env" {}

// Terraform State
variable "prefix_org_setup" {}
variable "prefix_project_setup" {}
variable "prefix_org_policies" {}
variable "state_bucket_name" {}
variable "prefix_platform_setup" {}
variable "tf_state_project_setup_csoc" {
  description = "The terraform state name in the csoc."
}

// Cloud SQL
variable "sql_name" {
  description = "Name of the Cloud SQL instance."
}

variable "db_name" {
  description = "Database names."
  type = "list"
}

variable "cluster_region" {
  description = "The region that the cluster master and nodes should be created in."
  default     = "us-central1"
}

// GKE
/*
variable "cluster_name" {
  description = "The name of the cluster, unique within the project and location."
}

variable "node_name" {
  description = "Name of the node pool."
}

variable "cluster_secondary_range_name" {
  description = "The secondary range will be used for pod IP addresses. This must be an existing secondary range associated with the cluster subnetwork."
  default     = "kubernetes-pods"
}

variable "services_secondary_range_name" {
  description = " The secondary range will be used for service ClusterIPs. This must be an existing secondary range associated with the cluster subnetwork."
  default     = "kubernetes-services"
}

/*
variable "username" {
  description = "The username to use for HTTP basic authentication when accessing the Kubernetes master endpoint. If not present basic auth will be disabled."
}

variable "password" {
  description = "The password to use for HTTP basic authentication when accessing the Kubernetes master endpoint."
}


variable "master_ipv4_cidr_block" {
  description = "The IP range in CIDR notation to use for the hosted master network. Must not overlap with any other ranges."
  default     = "172.15.0.0/28"
}

variable "min_master_version" {
  default = "1.12.7-gke.10"
}

variable "subnetwork_name" {
  description = "Name of the subnetwork in the VPC"
  type        = "list"
  default     = ["default"]
}

variable "node_tags" {
  description = " The list of instance tags applied to all nodes. Tags are used to identify valid sources or targets for network firewalls."
  type        = "list"
  default     = ["allow-ssh"]
}

variable "node_labels" {
  description = "The Kubernetes labels (key/value pairs) to be applied to each node"
  type        = "map"

  default = {
    "department"  = "ctds"
    "sponsor"     = "sponsor"
    "envrionment" = "development"
    "datacommons" = "commons"
  }
}

variable "node_auto_repair" {
  description = "Whether the nodes will be automatically repaired."
  default     = "true"
}

variable "node_auto_upgrade" {
  description = "Whether the nodes will be automatically upgraded"
  default     = "true"
}

// Kubernetes Addons
variable "horizontal_pod_autoscaling" {
  description = "Enable horizontal pod autoscaling addon"
  default     = true
}

variable "http_load_balancing" {
  description = "The status of the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster."
  default     = true
}

variable "network_policy_config" {
  description = "Enable network policy addon"
  default     = true
}

variable "kubernetes_dashboard" {
  description = "Enable HTTP Load balancer addon"
  default     = false
}

########### Google Public Access Info#############################################

variable "network_name" {
  description = "The name of the VPC network being created"
}

variable "fw_rule_deny_all_egress" {
  description = "Deny all egress traffic out of VPC"
}

variable "fw_rule_allow_hc_ingress" {
  description = "Allow ingress for health checks"
}

variable "fw_rule_allow_hc_egress" {
  description = "Allow egress to health checks"
}

variable "fw_rule_allow_google_apis_egress" {
  description = "Allow egress to Google APIs"
}

variable "fw_rule_allow_master_node_egress" {
  description = "Allow egress to master node subnet"
}
*/