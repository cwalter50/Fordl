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
    
    var green: [Int] = []
    var yellow: [Int] = []
    var gray: [String] = []
    var none: [Int] = []
    
    @IBOutlet var keyboard: [UILabel]!
    
    //remember: 0 is Q, 25 is M
    
    
    
    var currentRowLabel: [UILabel]!
    
    var currentRow = 1
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        currentWord[0] = possible.randomElement()!
        
        currentWordString = currentWord[0].lowercased()
        for i in 0...25
        {
            print(keyboard[i].text)
        }
        
        print("word is \(currentWordString.lowercased())")
    }

    @IBAction func enter(_ sender: UIBarButtonItem)
    {
        changeLabel()
    }
    
    func winAlertFunc()
    {
        let winAlert = UIAlertController(title: "you won", message: "you guessed the word in \(currentRow) tries", preferredStyle: .alert)
        let ok = UIAlertAction(title: "play again" , style: .default, handler:
        {
            action in self.navigationController?.popToRootViewController(animated: true)
        })
        winAlert.addAction(ok)
        present(winAlert, animated: true, completion: nil)
    }
    
    func loseAlertFunc()
    {
        let loseAlert = UIAlertController(title: "you lost", message: "the word was \(currentWord[0])", preferredStyle: .alert)
        let ok = UIAlertAction(title: "try again" , style: .default, handler:{
            action in self.navigationController?.popToRootViewController(animated: true)})
        loseAlert.addAction(ok)
        present(loseAlert, animated: true, completion: nil)
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
        
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer)
    {
        guessField.endEditing(true)
    }

    func keyboard(key:UILabel)
    {
        if guessField.text != " "
        {
            guessField.text = "\(guessField.text!.lowercased())\(key.text!.lowercased())"
        }
        else
        {
            guessField.text = key.text?.lowercased()
        }
        print(key.text!)
    }
    
    @IBAction func q(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[0])
    }
    
    
    @IBAction func w(_ sender: UITapGestureRecognizer)
    {
        print("hit")
        keyboard(key: keyboard[1])
    }
    
    @IBAction func e(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[2])
    }
    
    @IBAction func r(_ sender: Any)
    {
        keyboard(key: keyboard[3])
    }
    
    @IBAction func t(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[4])
    }
    
    @IBAction func y(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[5])
    }
    
    @IBAction func u(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[6])
    }
    
    @IBAction func i(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[7])
    }
    
    @IBAction func o(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[8])
    }
    
    @IBAction func p(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[9])
    }
    
    @IBAction func a(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[10])
    }
    
    @IBAction func s(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[11])
    }
    
    @IBAction func d(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[12])
    }
    
    @IBAction func f(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[13])
    }
    
    @IBAction func g(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[14])
    }
    
    
    @IBAction func h(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[15])
    }
    
    @IBAction func j(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[16])
    }
    
    
    @IBAction func k(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[17])
    }
    
    
    @IBAction func l(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[18])
    }
    
    
    @IBAction func z(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[19])
    }
    
    
    @IBAction func x(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[20])
    }
    
    
    @IBAction func c(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[21])
    }
    
    
    @IBAction func v(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[22])
    }
    
    
    @IBAction func b(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[23])
    }
    
    
    @IBAction func n(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[24])
    }
    
    
    @IBAction func m(_ sender: UITapGestureRecognizer)
    {
        keyboard(key: keyboard[25])
    }
    
    
    @IBAction func kbEnter(_ sender: UIButton)
    {
    changeLabel()
    }
    

    @IBAction func kbDelete(_ sender: UIButton)
    {
        print("hit")
         if guessField.text != ""
         {
         var text = guessField.text!
             text.removeLast()
             guessField.text = text
         }
    }
    

func changeLabel()
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
                if guess != currentWord[0]
                {
                    let loseAlert = UIAlertController(title: "you lost", message: "the word was \(currentWord[0])", preferredStyle: .alert)
                    let ok = UIAlertAction(title: "try again" , style: .default, handler: nil)
                    loseAlert.addAction(ok)
                    
                    present(loseAlert, animated: true, completion: nil)
                }
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
            loseAlertFunc()
        }

    }
  
    
    
    
    
}

}

