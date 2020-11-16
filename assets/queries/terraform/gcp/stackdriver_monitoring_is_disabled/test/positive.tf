#this is a problematic code where the query should report a result(s)
resource "google_container_cluster" "primary1" {
  name               = "marcellus-wallace"
  location           = "us-central1-a"
  initial_node_count = 3

  timeouts {
    create = "30m"
    update = "40m"
  }
}

resource "google_container_cluster" "primary2" {
  name               = "marcellus-wallace"
  location           = "us-central1-a"
  initial_node_count = 3
  monitoring_service = "none"

  timeouts {
    create = "30m"
    update = "40m"
  }
}