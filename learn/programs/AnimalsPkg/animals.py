
class Animal:
    def __init__(self, name="Animal", weight=0):
        self.name = name
        self.weight = weight
        
    def eat(self):
        print(f"{self.name} is eating")
        
    def sleep(self):
        print(f"{self.name} is sleeping")

class Dog(Animal):
    
    def __init__(self, name="Dog", weight=0, breed=""):
        super().__init__(name, weight)
        self.breed = breed
        
    def eat(self):
        super().eat()
        print(f"{self.name} is eating")
    