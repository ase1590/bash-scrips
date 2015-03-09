echo "Ping failures to 208.67.222.222" >/home/pi/pinglog 
while true; do 
  if ! ping -c 1 -q 208.67.222.222 >/dev/null; then 
    date >> /home/pi/pinglog 
  fi 
  sleep 57 
done
