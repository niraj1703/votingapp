resource "kubernetes_service" "app" {
  metadata {
    name = "votingapp"
    namespace = kubernetes_namespace.voting.metadata[0].name
    labels = { 
      app = "votingapp"
    }
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
