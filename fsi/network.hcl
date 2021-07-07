network "local" {
    subnet = "10.0.1.0/16"
}
container_ingress "frontend" {
    target = "container.envoy"

    port {
        local = 9999
        remote = 9999
        host = 9999
    }

    network {
        name = "network.local"
    }
}
container "envoy" {
    image {
        name = "envoyproxy/envoy-alpine:v1.13.1"
    }

    volume {
        source = "./envoy.yaml"
        destination = "/etc/envoy/envoy.yaml"
    }

    network {
        name = "network.local"
    }
}