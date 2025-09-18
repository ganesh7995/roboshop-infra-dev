resource "aws_ssm_parameter" "vpc_id" {
  name  = "/${var.project}/${var.enviroment}/frontend_sg_id"
  type  = "String"
  value = module.frontend.sg_id
}