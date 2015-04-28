FROM dockerfile/java:oracle-java8

#RUN rm -r /var/lib/apt/lists/* && apt-get update 
RUN apt-get update 
RUN apt-get install -y tesseract-ocr
RUN rm -r /var/lib/apt/lists/*
RUN cd /usr/bin && wget https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein 
RUN chmod 755 /usr/bin/lein

