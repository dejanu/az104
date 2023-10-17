# DNS

* Azure DNS is a hosting service for DNS domains:
    - A DNS server is also known as a name server
    - DNS: hierachical system of caching servers

## Flow for lookup request

1) check if the domain name is stored in the short-term cache.
2) if the domain is not in the short-term cache, it contect one or more DNS servers on the internet so see if theu have a match, when a 
match is found the DNS server updates the local cache and resolves the request.
3) if the domain is not found after a no. of DNS check, the DNS server responds with a `domain cannot be found`

```bash
# file for method for resolution for static lookup) will be used before any DNS entry
/etc/hosts
#  populated with DNS records issued by DHCP server, specifies the nameservers for resolver lookups,where it will actually use the DNS protocol for resolving the hostnames
 /etc/resolv.conf
```

![dns](https://github.com/dejanu/az_104400/blob/main/src/dns.png)

* TTL: Represents the "time-to-live" as a whole unit, where 1 is one second. This value indicates how long the A record lives in a DNS cache before it expires.