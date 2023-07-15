#!/bin/bash
#
# Puppet master/agent test evironment using containers
# Put your manifests to be tested in /var/test/puppet/manifests
# Put your modules to be tested in /var/test/puppet/modules


# Declaring Volumes to be mounted

MANIFESTS_PATH_LOCAL='/var/tmp/test/puppet/manifests'
MANIFESTS_PATH_CONTAINER='/etc/puppet/manifests'

MODULE_PATH_LOCAL='/var/tmp/test/puppet/modules'
MODULE_PATH_CONTAINER='/etc/puppet/modules' 

#  Start puppetmaster container

docker run -d --name puppetmaster -ti \
-v $MANIFESTS_PATH_LOCAL:$MANIFESTS_PATH_CONTAINER \
-v $MODULE_PATH_LOCAL:$MODULE_PATH_CONTAINER \
vmule/puppetmaster > /dev/null 2>&1 && sleep 5

echo "Starting puppetmaster container.."

# Start puppetagent container linked to puppetmaster container 
# This will trigger a puppet run so you can test your modules, manifests.

echo "Starting puppetagent container.."

echo "Starting Puppet Agent run on puppetagent container.."

docker run --rm --name puppetagent --link puppetmaster:puppet -ti vmule/puppetagent

# Stop and remove puppetmaster container 

echo "Stopping puppetmaster container.."
docker stop puppetmaster > /dev/null 2>&1

echo "Removing puppetmaster container.."
docker rm puppetmaster > /dev/null 2>&1

exit 0






