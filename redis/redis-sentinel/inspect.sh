GREEN='\033[0;32m'
NC='\033[0m'

images=$(docker ps -a -q)
echo "${GREEN} \n\t\waypoint Network ${NC}"
echo "ImageName : IP\n" 
for i in $images;
do
	docker inspect $i --format '{{json .Config.Image}} {{json .NetworkSettings.Networks.waypoint.IPAddress}}'
done
echo "---------------------------------------------------------------------------------------------------------"
echo "${GREEN} \n\t\tDatabase Network ${NC}"
echo "ImageName : IP\n" 
for i in $images;
do
	docker inspect $i --format '{{json .Config.Image}} {{json .NetworkSettings.Networks.database_nw.IPAddress}}'
done

echo " "
echo "${GREEN}Following containers are running${NC}"

docker ps -a --format 'table {{.Names}}''\t''{{.Ports}}'
echo " "