
echo "";
echo "Stop MongoDb";

sudo systemctl stop mongod;
sudo systemctl disable mongod;

echo "";
echo "MongoDB status";
sudo systemctl status mongod;
echo "";

