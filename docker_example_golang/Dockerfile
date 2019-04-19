#https://www.cloudreach.com/blog/containerize-this-golang-dockerfiles/
FROM golang:alpine


RUN mkdir /app 

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy everything from the current directory to the PWD(Present Working Directory) inside the container
ADD ./main.go /app/

RUN go build -o main .

CMD ["./main"]


#docker run -it golang1
