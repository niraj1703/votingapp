resource "kubernetes_namespace" "voting" {
  metadata {
    name = "voting"
  }
}
