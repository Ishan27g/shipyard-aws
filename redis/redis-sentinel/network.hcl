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
container "nginx" {
    image {
        name = "nginx:1.16.0-alpine"
    }

    volume {
        source = "./nginx/nginx.conf"
        destination = "/etc/nginx/nginx.conf:ro"
    }

    network {
        name = "network.local"
    }
}