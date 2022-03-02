//
//  secondVC.swift
//  Fordl
//
//  Created by david on 2/22/22.
//

import Foundation
import UIKit

class secondVC: UIViewController
{
    @IBOutlet weak var guessField: UITextField!
    
    
    @IBOutlet var row1: [UILabel]!
    @IBOutlet var row2: [UILabel]!
    @IBOutlet var row3: [UILabel]!
    @IBOutlet var row4: [UILabel]!
    @IBOutlet var row5: [UILabel]!
    // fix order
    
    
    var currentRowLabel: [UILabel]!
    
    var currentRow = 1
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        currentWord[0] = possible.randomElement()!
        
        currentWordString = currentWord[0].lowercased()
        
        
        print("word is \(currentWordString.lowercased())")
        


        
    }

    @IBAction func enter(_ sender: UIBarButtonItem)
    {
        guess = guessField.text?.lowercased() ?? ""
        let guessCharacters = Array(guess) //letters of guess
        
        print(guessCharacters)
        
        let wordChar = Array(currentWordString) // letters of current word
    
        if possible.contains(guess) || wordBank.contains(guess) && currentRow < 5
        {
            print("test")
    
            for i in 0...4
            {
                if currentRow == 1
                {
                row1[i].text = String(guessCharacters[i])
          
            check(row: row1, guessCharacters: guessCharacters, wordChar: wordChar)
                    
            }
           
               else if currentRow == 2
                {
                row2[i].text = String(guessCharacters[i])
                   check(row: row2, guessCharacters: guessCharacters, wordChar: wordChar)
                }
            
                else if currentRow == 3
                {
                row3[i].text = String(guessCharacters[i])
                    check(row: row3, guessCharacters: guessCharacters, wordChar: wordChar)
                }
            
                else if currentRow == 4
                {
                row4[i].text = String(guessCharacters[i])
                    check(row: row4, guessCharacters: guessCharacters, wordChar: wordChar)
                }
            
                else if currentRow == 5
                {
                row5[i].text = String(guessCharacters[i])
                    check(row: row5, guessCharacters: guessCharacters, wordChar: wordChar)
                }
            
            
            
            
            }




            guessField.text = ""
            currentRow += 1
        }
        
        
        
        else if possible.contains(guess) == false && wordBank.contains(guess) == false
        {
            let alert = UIAlertController(title: "error", message: "not a valid word", preferredStyle: .alert)
            let ok = UIAlertAction(title: "try again" , style: .default, handler: nil)
            alert.addAction(ok)
            
            present(alert, animated: true, completion: nil)
        }
        
        
        
        else //count above
        {
           
            if guess == currentWord[0]
            {
                for i in 0...4
                {
                    row5[i].text = String(guessCharacters[i])
                    row5[i].backgroundColor = UIColor.green
                }
                
               winAlertFunc()
            }
           
            else
            {
            let loseAlert = UIAlertController(title: "you lost", message: "the word was \(currentWord[0])", preferredStyle: .alert)
            let ok = UIAlertAction(title: "try again" , style: .default, handler: nil)
            loseAlert.addAction(ok)
            present(loseAlert, animated: true, completion: nil)
            }
          
            // self.view.window?.rootViewController?.dismiss(animated: true, completion: nil)

            
        }
        
        
    }
    
    func winAlertFunc()
    {
        let winAlert = UIAlertController(title: "you won", message: "you guessed the word in \(currentRow) tries", preferredStyle: .alert)
        let ok = UIAlertAction(title: "play again" , style: .default, handler: nil)
        winAlert.addAction(ok)
        present(winAlert, animated: true, completion: nil)
    }
    
    
    func check(row: [UILabel], guessCharacters: [String.Element], wordChar: [String.Element])
    {
        for j in 0...4
        {
            if currentWordString.contains(guessCharacters[j])
            {
                row[j].backgroundColor = UIColor.yellow
                if guessCharacters[j] == wordChar[j]
                {
                    row[j].backgroundColor = UIColor.green
                }
                
            }
            else
            {
                row[j].backgroundColor = UIColor.gray
            }
            
            if guess == currentWord[0]
            {
                winAlertFunc()
            }
            
        }
    }
        
    
    @IBAction func dismissKeyboard(_ sender: UIBarButtonItem)
    {
        guessField.endEditing(true)
    }
    
    
    
    
    
    

    
    
}

