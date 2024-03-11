//
//  Lab3ViewController.swift
//  Yuvraj_Jadeja_MT_8959963
//
//  Created by user239777 on 3/10/24.
//

import UIKit
import SwiftUI

class Lab3ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var FirstName: UITextField!
    
    @IBOutlet weak var LastName: UITextField!
    
    
    @IBOutlet weak var Counrty: UITextField!
    
    
    @IBOutlet weak var Age: UITextField!
    
    @IBOutlet weak var Information: UITextView!
    
    @IBOutlet weak var Message: UILabel!
    
    @IBAction func Add(_ sender: UIButton) {
        displayMessage()
    }
    
    @IBAction func Submit(_ sender: UIButton) {
        if information()
        {
            Message.text = "Submitted Successfully !"
        }
        else
        {
            Message.text = "Please Fill All The Details !"
        }
        Message.isHidden = false
    }
    
    func information() -> Bool
    {
        return !FirstName.text!.isEmpty &&
        !LastName.text!.isEmpty &&
        !Counrty.text!.isEmpty &&
        !Age.text!.isEmpty
        
    }
    
    @IBAction func clear(_ sender: UIButton) {
        AllClear()
        Message.isHidden = true
    }
    
    func AllClear()
    {
        FirstName.text = ""
        LastName.text = ""
        Counrty.text = ""
        Age.text = ""
        Information.text = ""
    }
    
    func displayMessage()
    {
        let firstName = FirstName.text ?? ""
        let lastName = LastName.text ?? ""
        let country = Counrty.text ?? ""
        let age = Age.text ?? ""
        let informationOfUser = "FIRST NAME : \(firstName)\nLAST NAME : \(lastName)\nCOUNTRY : \(country)\nAGE : \(age)"
        Information.text = informationOfUser
        
    }
}
