#FROM ubuntu:14.04
#https://www.cloudreach.com/blog/containerize-this-golang-dockerfiles/
FROM golang:alpine
#FROM golang:1.11
# Dockerfile References: https://docs.docker.com/engine/reference/builder/

RUN mkdir /app 

# Set the Current Working Directory inside the container
#WORKDIR $GOPATH/src/github.com/callicoder/go-docker
# 設定工作目錄為 /app
#WORKDIR $GOPATH/src/app
WORKDIR /app

# Copy everything from the current directory to the PWD(Present Working Directory) inside the container
#COPY . .
# 複製目前目錄下的內容，放進 Docker 容器中的 /app
#ADD /usr/local/pythonPro /app
#ADD /usr/local/go/src/hello /app
#ADD ./hello.go $GOPATH/src/app
ADD ./main.go /app/

# Download all the dependencies
# https://stackoverflow.com/questions/28031603/what-do-three-dots-mean-in-go-#command-line-invocations
#RUN go get -d -v ./...

# Install the package
#RUN go install -v ./...

# 安裝 requirements.txt 中所列的必要套件
#RUN pip install -r requirements.txt

RUN go build -o main .

# 讓 80 連接埠可以從 Docker 容器外部存取
# This container exposes port 8080 to the outside world
EXPOSE 8080

# 定義環境變數
#ENV NAME World
#ENV PATH=$PATH:$HOME/go/bin:$GOPATH/bin
#ENV GOPATH=/app

# 當 Docker 容器啟動時，自動執行 app.py
#CMD ["python", "app.py"]
# Run the executable
CMD ["./main"]

