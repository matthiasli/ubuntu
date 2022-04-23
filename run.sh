(
BASEDIR=$(dirname "$0")
cd $BASEDIR
docker build -t me:ubuntu .
docker run \
  -e HOST_IP=$(ifconfig en0 | awk '/ *inet /{print $2}') \
  -v ~/dockershare:/shared \
  -v ~/IdeaProjects:/IdeaProjects \
  -t -i \
  me:ubuntu /bin/bash
)