sudo apt-get install -y ganglia-monitor
sudo cp /etc/ganglia/gmond.conf /etc/ganglia/gmond.conf.bak
sudo cp ./gmond.conf /etc/ganglia/
sudo /etc/init.d/ganglia-monitor restart
