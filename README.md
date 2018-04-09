## symantec-certificate-checker

This repo contains the code and supporting files for this blog post:

https://arkadiyt.com/2018/02/04/quantifying-untrusted-symantec-certificates/

## Added in this fork

I added a Dockerfile in order to be able to run this easily without setting up ruby with the correct versions etc.

To build and run this container locally, try a command like:
```
docker build -t symantec-certificate-checker .
docker run -it -v yourlocaldatadir-withdomainscsv:/usr/src/app/data symantec-certificate-checker /bin/bash
```

Then run within the directory /usr/src/app inside container:
```
ruby symantec.rb data/your.csv
```

This will output the results as this JSON file, `your.csv_results.json`, in the data directory you mounted as a volume for the Docker container
