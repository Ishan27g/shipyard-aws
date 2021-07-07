
DO_IMG="local-rabbitmq-sender-receiver"

docker images | grep $DO_IMG
if [ $? -eq 1 ]; then
    cd go && docker build -t $DO_IMG . && cd ..
fi

shipyard init && shipyard destroy && shipyard run
if [ $? -eq 0 ]; then
echo "Run following command to launch...."
echo "\tdocker run -it --network=rabbitmq_nw $DO_IMG"
fi
