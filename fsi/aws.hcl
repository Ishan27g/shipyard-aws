container "service1" {
    image {
        name = "ishan27g/shipyard-exp:fsi-raft-service.0.1"
    }

    network {
        name = "network.local"
    }
    port {
        local = 9501
        remote = 9501
    }
    port {
        local = 9001
        remote = 9001
    }
     port {
        local = 9501
        remote = 9501
    }
    port {
        local = 7500
        remote = 7500
    }
    command = [
        "cd /app/",
        "./entrypoint.sh",
        "1",
        "-bootstrap=true"
    ]
}
