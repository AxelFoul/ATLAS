# ATLAS

(1) Install Docker Compose to the openstack virtual machine (VM). Manual: https://docs.docker.com/compose/install/
    For Linux run these two commands:
    
    $ sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    
    $ sudo chmod +x /usr/local/bin/docker-compose

and test instalation:
    
    $ docker-compose --version

(2) Clone git repository of ATLAS notebooks to the VM disk:

    $ sudo git clone https://github.com/atlas-outreach-data-tools/notebooks-collection-opendata.git

(3) Choose whether you want use just simple notebook or JupyterLab interface (notebook or JupyterLab folder, respectively). Go to the desired folder with docker-compose.yml file and open it. Under the volumes change home/address/where/ATLAS/notebooks/are: for particular address where you have saved ATLAS notebooks.

(4) From the folder with docker-compose.yml file run: 

    $ sudo docker-compose up

(5) Connect to the notebooks via browser using floating IP:8888 (it is necessary to allow port 8888 in openstack - Egress Ingress)

(6) Notebooks or JupyterLab should start immediately. 
