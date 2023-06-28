resource "null_resource" "k8s" {

  provisioner "local-exec" {
     command=  "sudo -s | git clone https://github.com/nihallondhe/Scripts.git | chmod 700 Scripts/kubernetes.sh | ./Scripts/kubernetes.sh | aws eks update-kubeconfig --region ${var.aws_region} --name ${var.cluster_name} "

  }
}
