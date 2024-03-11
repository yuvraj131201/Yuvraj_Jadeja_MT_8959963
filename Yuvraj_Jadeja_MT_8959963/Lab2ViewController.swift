//
//  Lab2ViewController.swift
//  Yuvraj_Jadeja_MT_8959963
//
//  Created by user239777 on 3/10/24.
//

import UIKit


class Lab2ViewController: UIViewController {
    
    var totalcounter = 0
    var stepIncrement = 1
    
    @IBOutlet weak var lable: UILabel!
    
    @IBOutlet weak var PlusButton: UIButton!
    
    @IBAction func PlusButton(_ sender: UIButton) {
        totalcounter += stepIncrement
        lable.text = String(totalcounter)
    }
    
  
    @IBAction func minus(_ sender: UIButton) {
        totalcounter -= stepIncrement
        lable.text = String(totalcounter)
    }
    
   
    @IBAction func step2(_ sender: UIButton) {
        stepIncrement = 2
        lable.text = String(totalcounter)
    }
    
    @IBAction func reset(_ sender: UIButton) {
        totalcounter = 0
        stepIncrement = 1
        lable.text = String(totalcounter)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

