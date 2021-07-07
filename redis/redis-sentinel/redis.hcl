container "redis-master" {
    image {
        name = "redis:alpine3.13"
    }
    network {
        name = "network.local"
    }
    port {
        local = 6380
        remote = 6380
    }
    volume {
        source      = "./redis-master/redis-master.conf"
        destination = "/etc/redis/redis.conf"
    }
    command = ["redis-server", "/etc/redis/redis.conf"]
}
container "redis-repl-1" {
    image {
        name = "redis:alpine3.13"
    }
    network {
        name = "network.local"
    }
    port {
        local = 6380
        remote = 6380
    }
    volume {
        source      = "./redis-repl/redis-repl.conf"
        destination = "/etc/redis/redis.conf"
    }
    command = ["redis-server", "/etc/redis/redis.conf"]
}
container "redis-repl-2" {
    image {
        name = "redis:alpine3.13"
    }
    network {
        name = "network.local"
    }
    port {
        local = 6380
        remote = 6380
    }
    volume {
        source      = "./redis-repl/redis-repl.conf"
        destination = "/etc/redis/redis.conf"
    }
    command = ["redis-server", "/etc/redis/redis.conf"]
}