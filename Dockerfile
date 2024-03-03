FROM public.ecr.aws/nginx/nginx:mainline
EXPOSE 80
RUN rm /usr/share/nginx/html/index.html
RUN rm /usr/share/nginx/html/index.php
# RUN rm /usr/share/nginx/php/index.php
COPY src/index.html /usr/share/nginx/html
