sudo pip install nvidia-ml-py
git clone https://github.com/ganglia/gmond_python_modules.git
nv_module_root=./gmond_python_modules/gpu/nvidia/

echo "Copy python_modules folder"
sudo cp -r ${nv_module_root}/python_modules /usr/lib/ganglia/
echo "Copy python_module config files"
sudo cp -r ${nv_module_root}/conf.d /etc/ganglia/

sudo cp /etc/ganglia/gmond.conf /etc/ganglia/gmond.conf.bak
sudo cp ./gmond-gpu.conf /etc/ganglia/
sudo /etc/init.d/ganglia-monitor restart
