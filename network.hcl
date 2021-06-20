network "local" {
    subnet = "10.0.1.0/16"
}
container_ingress "frontend" {
    target = "container.envoy"

    port {
        local = 8080
        remote = 8080
        host = 8080
    }

    network {
        name = "network.local"
    }
}