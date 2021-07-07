container "rabbitmq" {
    image {
        name = "rabbitmq:3-management"
    }

    network {
        name = "network.local"
    }
}