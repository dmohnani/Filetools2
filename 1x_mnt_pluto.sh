param=$1
# Is Mounted
mount|grep '192.168.1.28'
if [ $? -ne 0 ];then
#Not mounted
  if [ X$param == X-M ] ;then
  # Is requested to mount
  # Mount
     mount  -o username=root,password= //192.168.1.28/pluto/ /media5/
     if [ $? == 0 ];then
       echo "Mount was Successful"
       echo 'ls -l /media5/'
       ls -l /media5/
     fi
  fi
else
# Mounted
  echo "Already mounted"
  echo 'ls -l /media5/'
  ls -l /media5/
fi
