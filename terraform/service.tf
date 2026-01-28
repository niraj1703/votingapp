resource "kubernetes_service" "app" {
  metadata {
    name = "votingapp"
  }

  spec {
    selector = {
      app = "votingapp"
    }

    port {
      port        = 80
      target_port = 5000
    }

    type = "ClusterIP"
  }
}
