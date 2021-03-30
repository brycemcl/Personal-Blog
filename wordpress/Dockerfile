FROM wordpress:5
COPY parent-entrypoint.sh /usr/local/bin/
RUN sed '1 a /usr/local/bin/parent-entrypoint.sh' -i /usr/local/bin/docker-entrypoint.sh




# RUN echo '/usr/local/bin/parent-entrypoint.sh' >> /usr/local/bin/docker-entrypoint.sh
# ENTRYPOINT ["parent-entrypoint.sh"]
# CMD ["apache2-foreground"]
