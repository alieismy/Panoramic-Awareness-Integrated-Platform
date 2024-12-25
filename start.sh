#/bin/bash
#ENV
 #docker私有仓库（Harbor）
  registryUrl=10.10.4.1:5080/paip
  registry_user="admin"
  registry_pass="Harbor12345"
  project_name=$1
  image_name=$2
  env=$3
  node_user=root

if [ "${env}"  == dev ];then
  #研发环境 dev-paip
  node1=172.16.4.46
elif [ "${env}" == test ];then
  #测试环境
  node1=172.16.4.?
else
    echo '没有${env}环境！！！'
fi

#Prepare
echo "project_name: $1, image_name: $2, env:$3"

#Deploying
#可以写成一个ssh＂＂，为了解析方便，切分开（接下来为第一行，以此类推）
echo "--- docker login ${registryUrl} ---"
ssh $node_user@$node1 "docker login --username=${registry_user} --password=${registry_pass} ${registryUrl}"
echo "--- docker pull $project_name ---"
ssh $node_user@$node1 "docker pull $image_name && docker rm -f $project_name || true "
echo "--- docker run $image_name ---"
ssh $node_user@$node1 "docker run --name=$project_name -v /home/paip/$project_name:/home/paip/$project_name -itd $image_name"
echo "--- docker image prune ---"
ssh $node_user@$node1 "docker image prune -a -f --filter 'until=1h' "
# ssh $node_user@$node1 "tail -f /var/log/paip/$project_name/${project_name}.log"
