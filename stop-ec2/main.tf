

resource "null_resource" "shutdown-ec2" {

  provisioner "local-exec" {
    on_failure  = "fail"
    interpreter = ["/bin/bash", "-c"]
    command     = <<EOT
        echo -e "\x1B[31m Warning! shutting down instance having id .................. \x1B[0m"
        aws ec2 stop-instances --instance-ids i-0489b0f9dbc117ebf
        echo "***************************************shut down initiated****************************************************"
     EOT
  }
#   this setting will trigger script every time,change it something needed
  triggers = {
    always_run = "${timestamp()}"
  }


}