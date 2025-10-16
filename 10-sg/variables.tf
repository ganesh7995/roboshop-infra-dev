variable "project" {
    default = "roboshop"
}

variable "enviroment" {
    default = "dev"

}

variable "frontend_sg_name" {
    default = "frontend"
}

variable "frontend_sg_description" {
    default = "created sg for frontend instance"
}

variable "bastion_sg_name" {
    default = "bastion"
}

variable "bastion_sg_description" {
    default = "created sg for bastion instance"
}

variable "backend_alb_sg_name" {
    default = "backend-alb"
}

variable "backend_alb_sg_description" {
    default = "for backend alb"
}

variable "mongodb_ports_vpn" {
    default = [22,27017]
}