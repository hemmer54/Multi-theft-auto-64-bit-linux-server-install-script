cd ~/Downloads && mkdir -p mta_portable && cd mta_portable && \
mkdir -p mods/deathmatch/resources x64/modules && \
echo "--- Downloading Binaries ---" && \
wget -q --show-progress https://linux.multitheftauto.com/dl/multitheftauto_linux_x64.tar.gz && \
tar -xf multitheftauto_linux_x64.tar.gz --strip-components=1 && \
echo "--- Downloading Configs ---" && \
wget -q --show-progress -O mods/deathmatch/baseconfig.tar.gz https://linux.multitheftauto.com/dl/baseconfig.tar.gz && \
tar -xf mods/deathmatch/baseconfig.tar.gz -C mods/deathmatch --strip-components=1 && \
echo "--- Downloading Resources ---" && \
wget -q --show-progress https://mirror-cdn.multitheftauto.com/mtasa/resources/mtasa-resources-latest.zip && \
unzip -q mtasa-resources-latest.zip -d mods/deathmatch/resources && \
echo "--- Downloading Sockets Module ---" && \
wget -q --show-progress https://linux.multitheftauto.com/dl/modules/x64/ml_sockets.so -P x64/modules/ && \
rm *.tar.gz *.zip mods/deathmatch/*.tar.gz && \
chmod +x mta-server64 && \
echo "------------------------------------------------" && \
echo "INSTALL COMPLETE! Your server is in ~/Downloads/mta_portable" && \
echo "To start it: ./mta-server64"