# Use the official Golang image as the base image
FROM golang:latest

# Set the working directory in the container
WORKDIR /app

# Copy the Go code into the container
COPY cmd/app/ .

# Build the Go application
RUN go build -o main cmd/app/main.go

# Specify the command to run when the container starts
CMD ["./main"]