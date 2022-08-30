# DragonflyDB as a Service

From the Dragonfly official repo:
> Dragonfly is a modern in-memory datastore, fully compatible with Redis and Memcached APIs. Dragonfly implements novel algorithms and data structures on top of a multi-threaded, shared-nothing architecture. As a result, Dragonfly reaches x25 performance compared to Redis and supports millions of QPS on a single instance.
> Dragonfly's core properties make it a cost-effective, high-performing, and easy-to-use Redis replacement.

Use this to build and install dragonfly as a service, and enable auto restarts through systemd.

### Usage
    git clone https://github.com/arffsaad/dragonflyDB-service
    cd dragonflyDB-service
    chmod +x install.sh
    ./install.sh
