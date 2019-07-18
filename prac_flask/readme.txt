1.put Dockerfile and tmpflask.py in the same folder:test
2.then cd into the folder 
3.sudo docker build -t flask5000 .
4.Then, you will see the info :Succ...
5.sudo docker images =>to check the images:you will find the image named flask5000
6.sudo docker run -it -p 5000:5000 flask5000
(sudo docker port $CONTAINER_ID
sudo docker logs $CONTAINER_ID
)
