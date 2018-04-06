//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()
var invalidCharacters = 0

//Make sure input is not nil
guard let input = rawInput else
{
    //error
    exit(9)
}

for individualCharacter in input
{
    switch individualCharacter
    {
    case "I", "O", "S", "H", "Z", "X", "N":
        break
    default:
        invalidCharacters += 1
    }
}

if invalidCharacters > 1
{
    print("YOUR THING IS WRONG")
}
else
{
    print("Your sign will work!")
}
