#for getting most common ip in glastopf log for most common ip
cat glastopf.log.2018-12-27 | grep "requested" | awk -F ' ' '{print $4}' | sort | sort -bgr | head -10
#for getting most requested urls
cat glastopf.log.2018-12-27 | grep "requested" | awk -F ' ' '{print $7}' | sort | sort -bgr | head -10
#for getting whether POST or GET is used
cat glastopf.log.2018-12-27 | grep "requested" | awk -F ' ' '{print $6}' | sort | sort -bgr | head -10


