set -e

TAG=$1
if [ -z $TAG ]
  then echo "usage: $0 [tag]"; exit 1
fi

docker build . -t devgnucoop/ngcontainer:$TAG
docker tag devgnucoop/ngcontainer:$TAG devgnucoop/ngcontainer:latest
docker push devgnucoop/ngcontainer:$TAG
docker push devgnucoop/ngcontainer:latest
git tag -a "ngcontainer_${TAG}" -m "published to docker"
git push --tags
