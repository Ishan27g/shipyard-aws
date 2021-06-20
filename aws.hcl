container "website" {
    image {
        name = "ishan27g/shipyard-exp:website-0.1"
    }

    network {
        name = "network.local"
    }
}

container "simple-server" {
    image {
        name = "ishan27g/shipyard-exp:simple-server-0.1"
    }

    env {
        key = "NAME"
        value = "API"
    }

    network {
        name = "network.local"
    }
}