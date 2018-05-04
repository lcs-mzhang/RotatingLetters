//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var invalidCharacters = 0
var validInput = ""

//Make sure input is not nil
while(true) {
    guard let givenInput = readLine() else {
        continue
    }    
    if givenInput.count < 1 || givenInput.count > 30 || givenInput == " "
    {
        print("input less than 1 or more than 30")
        continue
    }
    validInput = givenInput
    break
}

for individualCharacter in validInput
{
    switch individualCharacter
    {
    case "I", "O", "S", "H", "Z", "X", "N":
        break
    default:
        invalidCharacters += 1
    }
}

if invalidCharacters >= 1
{
    print("NO")
}
else
{
    print("YES")
}
