# DNS Server

## Port forwarding
- ssh: `22->2222`
- dns: `53->5353`

## Definition
- Startup a server with unbound and dnsmasq.
- Configure `127.0.0.1` to `/etc/resolv.conf`.
- Redirect traffic from `5353` to `53` using iptables.

## Start
`vagrant up`

## Stop
`vagrant halt`

## Destroy
`vagrant destroy`
