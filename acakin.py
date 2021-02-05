import random

# get user input
input_number = input("How many number would you generate ? Input here (1-100): ")

# check condition if user input is correct
if int(input_number) < 1 or int(input_number) > 100:
    print("Wrong input")
else:
    # generate random number and print to txt file
    output_number = 0
    print("Your random number: ")
    f = open("print_number.txt", "w")
    while output_number < int(input_number):
        random_number_1 = random.randint(1,9)
        random_number_2 = random.randint(1,9)
        random_number_3 = random.randint(1,9)
        random_number_4 = random.randint(1,9)
        random_number_5 = random.randint(1,9)
        random_number_6 = random.randint(1,9)
        random_number_combined = str(random_number_1)+str(random_number_2)+str(random_number_3)+str(random_number_4)+str(random_number_5)+str(random_number_6)
        f.write(str(random_number_combined) + "\n")
        output_number += 1
    f.close()