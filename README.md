#docker 

Dockerfiles collection.


#Puppet containerized environment

Collection of container to create a Puppet Master/Agent testing environment.

#Usage

Put your manifests locally in /var/test/puppet/manifests

Put your modules locally in /var/test/puppet/modules

#Start it with the command:

$ sudo run ./docker-puppet-suite.sh

#Sample output

```
./docker-puppet-suite.sh
Starting puppetmaster container..
Starting puppetagent container..
Info: Creating a new SSL key for puppetagent
Info: Caching certificate for ca
Info: csr_attributes file loading from /etc/puppet/csr_attributes.yaml
Info: Creating a new SSL certificate request for puppetagent
Info: Certificate Request fingerprint (SHA256): 4F:76:CA:E7:D4:95:30:46:FF:4C:6B:5D:77:39:0F:0D:B0:E1:F8:B0:F9:57:E2:D1:D1:DF:82:80:D3:CA:D6:79
Info: Caching certificate for puppetagent
Info: Caching certificate_revocation_list for ca
Info: Caching certificate for ca
Info: Retrieving pluginfacts
Info: Retrieving plugin
Info: Caching catalog for puppetagent
Info: Applying configuration version '1420981702'
Info: Creating state file /var/lib/puppet/state/state.yaml
Notice: Finished catalog run in 0.02 seconds
Stopping puppetmaster container..
Removing puppetmaster container..
```
