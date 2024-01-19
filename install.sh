# Delete old installation
sudo rm /usr/local/lib/VimbaX

# If you need ARM, change to VimbaX_Setup-2023-1-Linux_ARM64.tar.gz
# tar -xzvf VimbaX_Setup-2023-1-Linux64.tar.gz
# tar -xzvf VimbaX_Setup-2023-1-Linux_ARM64.tar.gz
while true; do
    echo "Install amd64 (1) or ARM64 (2)?"
    read -n1 input
    if [ "$input" = "1" ]; then
        tar -xzvf VimbaX_Setup-2023-1-Linux_ARM64.tar.gz
        break
    elif [ "$input" = "2" ]; then
        tar -xzvf VimbaX_Setup-2023-1-Linux_ARM64.tar.gz
        break
    else
        echo "Try again"
    fi
done

cd VimbaX_2023-1/cti/
sudo sh VimbaUSBTL_Install.sh
cd ../../
sudo cp -r VimbaX_2023-1 /usr/local/lib/VimbaX
rm -r VimbaX_2023-1/
sudo ldconfig

