resource "null_resource" "k8s" {

  provisioner "local-exec" {
     command=  "git clone https://github.com/nihallondhe/Scripts.git |sudo chmod 700 Scripts/kubernetes.sh | sudo ./Scripts/kubernetes.sh | aws eks update-kubeconfig --region ap-south-1 --name eks-test "

  }
}
