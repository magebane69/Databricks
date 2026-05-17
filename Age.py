#voting eligibility Check

#Age is less than 18 you have to raise/Throw exception

try:
    age = int(input("Enter your age:"))

    if age >= 18:
        print("You are old enough to Vote")
        print("You can apply for the voting ID and fill the form")
    else:
        print("You are not old enough to Vote")
        raise Exception ("You are not old enough to Vote")
except ValueError as Ve:
    print("Its a ValueError, Please enter a valid age")
except Exception as Err:
    print("Error")
    print(Err)