module "frontend" {
    #source = "../../terraform-aws-securitygroup"
    source = "git::https://github.com/ganesh7995/terraform-aws-securitygroup.git?ref=main"
    project = var.project
    enviroment = var.enviroment

    sg_name = var.frontend_sg_name
    sg_description = var.frontend_sg_description
    vpc_id = local.vpc_id
}