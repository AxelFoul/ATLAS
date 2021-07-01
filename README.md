# ATLAS

(1) Download Dockerfile to the openstack virtual machine (VM)

(2) Go to the folder with Dockerfile and from that folder build image from Dockerfile: 
$ sudo docker image build --network host -t jupyter-root .

(3) Clone git repository of ATLAS notebooks to the VM disk
$ sudo git clone https://github.com/atlas-outreach-data-tools/notebooks-collection-opendata.git

(4) Run docker container with access to the ATLAS notebooks:
$ sudo docker container run --rm -p 8888:8888 -v  ~/adress/where/ATLAS/notebooks/are:/home/jovyan/work --name jupyter jupyter-root:latest

(5) Connect to the notebooks via browser using floating IP:8888 (it is nescessary to allow port 8888 in openstack - Egress Ingress)

(6) Insert token from CLI - usually last line with something like: http://127.0.0.1:8888/?token=5afd....., so copy just the letters and numbers following equal sign.
