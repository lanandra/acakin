# acakin

![alt text](https://github.com/lanandra/acakin/blob/main/acakin_logo.jpg?raw=true)

acakin is simple application to generate random number

Features on v1.0.3 (previous version):
- acakin support generate multiple random number (between 1 and 100) with 6 digit at each number then print output to .txt file
- acakin can be running as shell script or on docker container

Features on v1.1.0 (ongoing development):
- acakin can be running as python script

## How to use

### Local file
1. Clone this repository to your local
2. Run shell script acakin.sh using this command  

        ./acakin.sh  

3. Run python script acakin.py using this command. 

    On linux:   

        python3 acakin.py  

    Change python3 to python when running on Windows

### Run on Docker container
1. Pull image from dockerhub  

     Pull latest version

             docker pull lanandra/acakin  

     Or you can pull using tag for specific version

             docker pull lanandra/acakin:1.0.3  

2. Run container using this command

             docker run -it --rm lanandra/acakin:latest | tee -a print_number.txt  
     
     or

             docker run -it --rm lanandra/acakin:1.0.3 | tee -a print_number.txt  

     Optional:

     For clean output, please delete any existing print_number.txt. You can use this command

             rm -rf print_number.txt ; docker run -it --rm lanandra/acakin:latest | tee -a print_number.txt  

     or

             rm -rf print_number.txt ; docker run -it --rm lanandra/acakin:1.0.3 | tee -a print_number.txt  