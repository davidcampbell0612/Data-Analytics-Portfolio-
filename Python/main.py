#python final


#import from standard lib
import pandas as pd
#file i/o
ofile = open("text", "w")
ofile.write("Thanks for playing! For your memory, write your name and the date:"
            "David Campbell, 8/14")
ofile.close
#data = pd.read_csv(r"C:\Users\david\Desktop\UFCdata.csv")
data = pd.read_csv("UFCdata.csv")
print(data)


print("Hello! Welcome to the first edition of Fight Night - The Trivia Game")


#Linear Search for iterations
#custom function
#learned/got idea from homework unit 4
print("In the Red corner, fighting out of Dagestan, Russia, Petr Yan is about to fight for the Bantamweight Championship of the world. When did this fight take place? ")
print("Let's perform a linear search for a fighter's most recent fight, in the red corner")
def linearsearch(fighter, x):
    for i in range(len(fighter)):
        if fighter[i] == x:
            return i
    return print("Sorry, there are no records of this person's fights in the record books")
fighter = data['R_fighter']

x = str(input("Enter the fighter's name: "))
print("Fighter's records at: " +str(linearsearch(fighter, x)))
print("Number reflects what row they are in the excel spreadsheet")
print("Note: There are 2 header columns, so add 2 to the number for the correct row")
print("According to the database, the answer is March 6th, 2021!")
print("*********************")


print("In the blue corner, from New Zealand, stands a top contender in Kai Kara-France. What weight division does he fight in?")
print("Let's perform a linear search for a fighter's most recent fight, in the blue corner")


def linearsearch(fighter, x):
    for i in range(len(fighter)):
        if fighter[i] == x:
            return i
    return print("Sorry, there are no records of this person's fights in the record books")
fighter = data['B_fighter']


x = str(input("Enter the fighter's name: "))
print("Fighter's records at: " +str(linearsearch(fighter, x)))
print("Number reflects what row they are in the excel spreadsheet")
print("Note: There are 2 header columns, so add 2 to the number for the correct row")
print("According to the database, the answer is Flyweight")
print("*********************")




#Guess the location of Yan vs Aljo I
#got this idea from the homework 1. wayyyy back
#decision making

Location = "Las Vegas, NV"
another_chance = "y"
print("The Question...\n")

while(another_chance == "y"):
    guess = str(input("Where was the location of Petr Yan vs. Aljamain Sterling I?" ))
    if (guess == Location):
        print("You are Correct! Sterling won this bout by DQ")
        another_chance = 'n'
    else:
        if (guess != Location):
            print("Guess again, for kicks.")
            another_chance = input("Want another shot? (answer y or n)")

print("On to the next...")

print("**************************")




#import from a custom lib
#Classes
#Functions


from finallib import *
from finallib import explanation
print(explanation())

print("\nThe new fighter created \n")

fighter1 = Fighter("Bo Nickal", "Middleweight", "26" "American Top Team")
print(fighter1.getfighter(),fighter1.getweightclass(), fighter1.getage())#fighter1.getteam())







#anotherquestion
#Guess the weight class
#again, idea inspired from homework 1
print("Not so fast. Quick! Answer as fast as you can!")

Division = "Bantamweight"
another_chance = "y"
print("The Question...")

while(another_chance == "y"):
    guess = str(input("What weight division does Sean O'Malley currently fight in?" ))
    if (guess == Division):
        print("You are Correct! O'Malley is currently 15-1. ")
        another_chance = 'n'
    else:
        if (guess != Division):
            print("Guess again, for kicks.")
            another_chance = input("Want another shot? (answer y or n)")

print("Nice work")



print()
#data structure
#the simplest version, a list
# a running list of the sport's "greats", according ot the user
print("Who are two fighters that you consider to be a legend in the sport? We have added one that we consider a great in the list already.")
print("*Note, we may consider your input to incorporate your answers into question in the future.*")
ds = ['TJ Dillashaw']
maxLengthList = 3
while len(ds) < maxLengthList:
    item = input("Enter the name of the fighter who you consider a great into the List: ")
    ds.append(item)

print ("Here are a list of the greats of the sport, according to you. Thanks for your thoughts!")
print (ds)




#for constant criteria from custom lib
from finallib import secret_message
print(secret_message)

#Errors/Comments about my project
#At random times when I type in a fighter's name/location in correctly, it won't find the data.
#for the linear search it would've been cool if more statistics would have been shown, maybe I could've done this a different way
#I wanted to import the linear search function from my library but it didn't work as expected and I wasn't sure where I was going wrong. So I kept it in the program because I liked the idea, but for the fuction from the custom library I did something more simple
#After I made a function and imported it from my custom library, in the console it says "none" when the function prints and that is unintended
#My file i/o didn't work as I wanted it to. It still works, but I wanted it to produce something more creative than just a complilation of dates/names of people playing.
#In proposal it was suggested to use data visualization, but I didn't see with the data given how that would be possible.
#Hope you enjoyed, thanks for the great semester!