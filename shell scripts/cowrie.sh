#for getting details from file in format
cat cowrie.json.2019-01-01 | jq '.'
#for extracting ip addresses
cat cowrie.json.2019-01-01 | jq '.src_ip'
#for getting name of the sensor from the log file
cat cowrie.json.2019-01-01 | jq '.sensor'
#for source port details
cat cowrie.json.2019-01-01 | jq '.src_port'
#for destination port details
cat cowrie.json.2019-01-01 | jq '.dst_port'
#for finding the most common occoured ip from the source 
cat cowrie.json.2019-01-01 | jq '.src_ip' | sort | uniq -c | sort -bgr | head -3

