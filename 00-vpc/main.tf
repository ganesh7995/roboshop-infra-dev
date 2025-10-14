module "vpc" {
    source = "git::https://github.com/ganesh7995/terraform-aws-vpc.git?ref=main"
    project = var.project
    enviroment = var.enviroment
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    database_subnet_cidrs = var.database_subnet_cidrs

    is_peering_required = true
}

/* output "vpc_ids"{
    value = module.vpc.public_subnet_ids
} */
