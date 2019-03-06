FROM java:8

COPY Ejemplo.java /var/www/java/Ejemplo.java

WORKDIR /var/www/java

RUN javac Ejemplo.java

CMD ["java", "Ejemplo"  ]


