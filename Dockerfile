FROM openjdk:18-oraclelinux8

ADD https://api.modpacks.ch/public/modpack/100/2277/server/linux /root/serverinstall_100_2277
 
RUN chmod +x /root/serverinstall_100_2277 \
    && /root/serverinstall_100_2277 --nojava --path /ftb/stoneblock --auto \
    && echo -e "eula=true\r\n" > /ftb/stoneblock/eula.txt

WORKDIR "/ftb/stoneblock/"
ENTRYPOINT ["./start.sh"]
