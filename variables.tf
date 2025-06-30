variable instance_type{
    type = string
    default = "t3.micro" #creating t3 micro instance in aws
}
variable "number_of_instance" {
    type = number
    default = 1
}
variable "ebs_optimized" {
    type = bool
    default = true
}
variable "instance_tenancy"{
    type = list(string)
    default = ["default","dedicate","host"]
}
variable "security_group_ids" {
    type = set(string)
    default = ["sg-0a5c48fe00b514c1f","sg-0bb2c232ef889bbdb"]  
}
variable "metadata_options"{
    type = map(string)
    default = {
        http_endpoint   =   "enabled"
        http_tokens = "required"
        http_put_response_hop_limit = "2"
    }
}
variable "root_block_device"{
    type = object({
      volume_type = string,
      volume_size = number,
      delete_on_termination = bool
    })
    default = {
      volume_type = "gp2"
      volume_size = 20
      delete_on_termination = true
    }
}
variable "launch_date"{
    type = tuple([ number, string ])
    default = [ 28, "June" ]
}
variable "ami_type" {
    type = list(string)
    default = ["ami-09c813fb71547fc4f"]
}