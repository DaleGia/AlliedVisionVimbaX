# Delete old installation
sudo rm /usr/local/lib/VimbaX
# If you need ARM, change to VimbaX_Setup-2023-1-Linux64_ARM.tar.gz
tar -xzvf VimbaX_Setup-2023-1-Linux64.tar.gz
cd VimbaX_2023-1/cti/
sudo sh VimbaUSBTL_Install.sh
cd ../../
sudo cp -r VimbaX_2023-1 /usr/local/lib/VimbaX
sudo ldconfig

