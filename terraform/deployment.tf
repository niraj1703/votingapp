resource "kubernetes_deployment" "app" {
  metadata {
    name = "votingapp"
    labels = {
      app = "votingapp"
    }
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "votingapp"
      }
    }

    template {
      metadata {
        labels = {
          app = "votingapp"
        }
      }

      spec {
        container {
          name  = "votingapp"
          image = "votingapp:latest"

          port {
            container_port = 5000
          }
        }
      }
    }
  }
}
