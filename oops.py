class Calc:
    def __init__(self):
        print("Init Calc Class called")
        pass
    def multiply(self,a,b):
        return a*b

basic_Calc = Calc()

print(basic_Calc.multiply(200,3))

class Detail:
    def __init__(self,name,age,city,mob):
        self.name = name
        self.age = age
        self.city = city
        self.mob = mob
    def display(self):
        print("Name:",self.name)
        print("Age:",self.age)
        print("City:",self.city)
        print("Mob:",self.mob)
        print("List Completed")

selvakumar=Detail('Selvakumar',36,'Chennai',91765236670)

print(selvakumar)
selvakumar.display()

print(selvakumar.display())