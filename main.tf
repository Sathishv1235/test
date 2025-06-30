resource "aws_instance" "ec2-instance" {
    count =   var.number_of_instance
    ami = var.ami_type[0]
    instance_type = var.instance_type
    ebs_optimized = var.ebs_optimized
    tenancy = var.instance_tenancy[0]

    root_block_device {
      volume_type = var.root_block_device["volume_type"]
      volume_size = var.root_block_device["volume_size"]
      delete_on_termination = var.root_block_device["delete_on_termination"]
    }

     metadata_options {
       http_endpoint = var.metadata_options.http_endpoint
       http_tokens = var.metadata_options.http_tokens
       http_put_response_hop_limit = var.metadata_options.http_put_response_hop_limit
     }
    
     vpc_security_group_ids = var.security_group_ids

     tags = {
        launch_date = var.launch_date[0]
        launch_date = var.launch_date[1]
     }
    
     }
