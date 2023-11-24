resource "null_resource" "argocd" {

  depends_on = [
    null_resource.k8s
  ]
  provisioner "local-exec" {
 command= "sudo chmod 700 argo.sh | sudo ./argo.sh"
 }
}
