# acakin

acakin is simple bash script to generate random number

Features on v1.0.3:
- acakin support generate multiple random number (between 1 and 100) with 6 digit at each number then print output to .txt file
- acakin support run on docker container

## How to use

### Local file
1. Clone this repository to your local
2. Run acakin.sh

     `./acakin.sh`

### Run on Docker container
1. Pull image from dockerhub

     Pull latest version 
     `docker pull lanandra/acakin`

     Or you can pull using tag for specific version
     `docker pull lanandra/acakin:1.0.3`

2. Run container using this command

     `docker run -it --rm lanandra/acakin:latest | tee -a print_number.txt`
     or
     `docker run -it --rm lanandra/acakin:1.0.3 | tee -a print_number.txt`