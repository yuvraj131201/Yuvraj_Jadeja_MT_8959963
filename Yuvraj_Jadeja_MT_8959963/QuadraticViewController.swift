//
//  QuadraticViewController.swift
//  Yuvraj_Jadeja_MT_8959963
//
//  Created by user239777 on 3/10/24.
//

import UIKit

class QuadraticViewController: UIViewController {

    @IBOutlet weak var InputA: UITextField!
    @IBOutlet weak var InputB: UITextField!
    @IBOutlet weak var InputC: UITextField!
    @IBOutlet weak var ErrorMessage: UILabel!
    
    @IBOutlet weak var QuadraticAnswer: UILabel!
    override func viewDidLoad() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        super.viewDidLoad()
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        InputA.text = "";
        InputB.text = "";
        InputC.text = "";
        ErrorMessage.text = "";
        QuadraticAnswer.text = "";
    }
    
    @IBAction func Calculate(_ sender: Any) {
        if(InputA.text == "" && InputB.text == "" && InputC.text == ""){
            ErrorMessage.text = "Enter a value for A, B and C to find X";
            return;
        }
        let valueA = Double(InputA.text!.trimmingCharacters(in: .whitespacesAndNewlines));
        let valueB = Double(InputB.text!.trimmingCharacters(in: .whitespacesAndNewlines));
        let valueC = Double(InputC.text!.trimmingCharacters(in: .whitespacesAndNewlines));
        QuadraticAnswer.text = "";
        if(valueA == nil){
            ErrorMessage.text = "The value you entered for A is invalid.";
            return;
        }
        if(valueB == nil){
            ErrorMessage.text = "The value you entered for B is invalid.";
            return;
        }
        if(valueC == nil){
            ErrorMessage.text = "The value you entered for C is invalid.";
            return;
        }
        ErrorMessage.text = "";
        let solution = quadraticRoots(a: valueA ?? 0, b: valueB ?? 0, c: valueC ?? 0);
        if(solution.0 != nil && solution.1 != nil){
            if(solution.0! == solution.1!){
                QuadraticAnswer.text = "Answer : \n\tX = \(String(format: "%.2f", solution.0!))";
            } else{
                QuadraticAnswer.text = "Answer : \n\tX = \(String(format: "%.2f", solution.0!)) and  X = \(String(format: "%.2f", solution.1!))";
            }
        }else{
            ErrorMessage.text = "There are no results since the discriminant is less than zero.";
        }
    }
    
    func quadraticRoots(a: Double, b: Double, c: Double) -> (Double?, Double?) {
        let discriminant = b * b - 4 * a * c
        
        return discriminant < 0 ? (nil, nil) :
                                  ((-b + sqrt(discriminant)) / (2 * a), (-b - sqrt(discriminant)) / (2 * a))
    }
    
    @IBAction func Clear(_ sender: Any) {
        InputA.text = "";
        InputB.text = "";
        InputC.text = "";
        ErrorMessage.text = "";
        QuadraticAnswer.text = "";
    }
}
