module "eks" {
  source = "https://github.com/Tejaswi53/terraform-aws-eks.git?ref=V1.0.0"

  cluster_name    = var.cluster_name
  cluster_version = var.cluster_version

  bootstrap_self_managed_addons = false
  cluster_addons = {
    coredns                = {}
    eks-pod-identity-agent = {}
    kube-proxy             = {}
    vpc-cni                = {}
  }

  cluster_endpoint_public_access = true

  enable_cluster_creator_admin_permissions = true

  vpc_id                   = ""
  subnets_id               = ""
  control_plane_subnet_ids = ""

  eks_managed_node_groups = {
    node-group-1 = {
      ami_type       = var.ami_type
      instance_types = var.instance_types

      min_size     = var.min_size
      max_size     = var.max_size
      desired_size = var.desired_size
    }
  }

  tags = {
    Name    = var.cluster_name
    Env     = var.environment
    Managed = "Terraform"
  }
}
