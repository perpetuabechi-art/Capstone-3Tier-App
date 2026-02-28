# Step 1: Use a tiny web server called Nginx
FROM nginx:alpine

# Step 2: Copy your index.html from your computer into the Docker container
COPY index.html /usr/share/nginx/html/index.html

# Step 3: Tell Docker the container will listen on port 80
EXPOSE 80
