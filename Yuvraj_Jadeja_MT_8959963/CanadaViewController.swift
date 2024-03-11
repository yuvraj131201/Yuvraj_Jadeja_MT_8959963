//
//  CanadaViewController.swift
//  Yuvraj_Jadeja_MT_8959963
//
//  Created by user239777 on 3/10/24.
//

import UIKit

class CanadaViewController: UIViewController {
    var cityList = ["calgary", "halifax", "montreal", "toronto", "vancouver", "winnipeg"];
    @IBOutlet weak var CityImage: UIImageView!
    @IBOutlet weak var ErrorMessage: UILabel!
    @IBOutlet weak var CitySearch: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        CityImage.image = UIImage(named: "Canada");
        CitySearch.text = "";
        ErrorMessage.text = "";
    }
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    @IBAction func FindCity(_ sender: UIButton) {
        if(CitySearch.text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""){
            ErrorMessage.text = "Please Enter A City Name";
        }else if(!cityList.contains(CitySearch.text!.lowercased().trimmingCharacters(in: .whitespacesAndNewlines))){
            CityImage.image = UIImage(named: "Canada");
            ErrorMessage.text = "City Not Found! Try Again.";
        }else{
            ErrorMessage.text = ""
            CityImage.image = UIImage(named: CitySearch.text!.lowercased().trimmingCharacters(in: .whitespacesAndNewlines))
            CitySearch.text = "";
        }
    }
}
