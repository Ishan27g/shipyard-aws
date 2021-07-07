network "rabbitmq_nw" {
    subnet = "10.0.1.0/16"
}
container_ingress "frontend" {
    target = "container.rabbitmq"
}
container "rabbitmq" {
    image {
        name = "rabbitmq:3-management"
    }
    port {
        local = 5672
        remote = 5672
        host = 5672
    }
    port {
        local = 15672
        remote = 15672
        host = 15672
    }
    network {
        name = "network.rabbitmq_nw"
    }
}