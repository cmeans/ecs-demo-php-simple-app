FROM public.ecr.aws/nginx/nginx:mainline
EXPOSE 80
RUN rm /usr/share/nginx/html/index.html
COPY src/index.html /usr/share/nginx/html
