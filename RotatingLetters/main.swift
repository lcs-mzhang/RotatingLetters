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
prompting: while true {
    
    // Get the raw user input
    print("Input word is? ", terminator: "")
    
    // Unwrap the given input from user, make sure it is not nil
    guard let givenInput = readLine() else {
        
        // Bad input, continue to next iteration of loop to prompt again
        continue prompting
        
    }
    
    // Check the input length
    if givenInput.count < 1 || givenInput.count > 30 {
        
        // Bad input (too long), continue to next iteration and prompt again
        continue prompting
        
    }
    
    // PRE-PROCESS
    // Look at each individual character in the input
    for individualCharacter in givenInput {
        
        // Check what type of character this is
        switch individualCharacter {
            
        case "A", "B", "C",  "D",  "E",  "F",  "G",  "H",  "I",  "J",  "K",  "L",  "M",  "N",  "O",  "P",  "Q",  "R",  "S",  "T",  "U",  "V",  "W", "X", "Y", "Z":
            // Acceptable character, continue checking remaining characters
            continue
            
        default:
            // Unacceptable letter, stop checking remaining characters and just prompt again
            continue prompting
        }
    }
    
    // We got this far, so the input must be valid
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
