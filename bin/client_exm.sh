#time=`date +%Y%m%d%H%M%S`
time=`date +%T`
hostname=`uname -n`
itemk="testk"
value="99"

curl localhost:8567/ -d "time=$time&hostname=$hostname&itemk=$itemk&value=$value"
