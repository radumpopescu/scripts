cat > /usr/local/bin/composer << EOF
#!/bin/sh
 export PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin
 echo "Current working directory: '"$(pwd)"'"
 docker run --rm -v $(pwd):/app -v ~/.ssh:/root/.ssh composer/composer $@
EOF
chmod +x /usr/local/bin/composer