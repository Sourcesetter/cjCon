# fly --target tutorial login --concourse-url http://192.168.0.169:8080
# 
# fly --target tutorial sync
# 
# echo "-----------------"
# echo $CONCOURSE_EXTERNAL_URL
# 
# 
# pushd  basic/hello-world/
# fly -t tutorial execute -c task_hello_world.yml 

