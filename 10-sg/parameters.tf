resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project}/${var.enviroment}/frontend_sg_id"
  type  = "String"
  value = module.frontend.sg_id
}

resource "aws_ssm_parameter" "bastion_id" {
  name  = "/${var.project}/${var.enviroment}/bastion_sg_id"
  type  = "String"
  value = module.bastion.sg_id
}


resource "aws_ssm_parameter" "backend_alb_sg_id" {
  name  = "/${var.project}/${var.enviroment}/backend_alb_sg_id"
  type  = "String"
  value = module.backend_alb.sg_id
}

resource "aws_ssm_parameter" "vpn_sg_id" {
  name  = "/${var.project}/${var.enviroment}/vpn_sg_id"
  type  = "String"
  value = module.vpn.sg_id
}