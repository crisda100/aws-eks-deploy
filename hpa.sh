kubectl run -i \
    --tty load-generator \
    --rm --image=busybox \
    --restart=Never \
    -- /bin/bash -c "while sleep 0.01; do wget -q -O- http://php-apache; done"