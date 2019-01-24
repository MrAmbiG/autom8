$json=(dir .\* -Include '*.json')[0].Name
New-Item -ItemType file -Name Dockerfile -Force
Add-Content Dockerfile "FROM gajuambi/hello"
Add-Content Dockerfile "COPY $json /root/input/"
docker build . -t hello
docker run hello:latest
