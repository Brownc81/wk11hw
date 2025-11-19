resource "aws_launch_template" "antoinette" {
  name_prefix   = "antoinette-lt"
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.antoinette3.id]
  user_data     = base64encode(file("user_data.sh"))
  ####12.08.25
  image_id = "ami-09968b16214ef62ce"

  tag_specifications {
    resource_type = "instance"
    tags        = {
        name    ="antoinette-lt"
        service = "application"
        Owner   = "Chewbacca"
        Planet  = "Mustafar"
    }
  }
  lifecycle {
    create_before_destroy = true
  }
}