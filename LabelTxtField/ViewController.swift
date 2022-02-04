//
//  ViewController.swift
//  LabelTxtField
//
//  Created by mac mini on 2/4/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myTextField.delegate = self
        
        
        myButton.isEnabled = false
        
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        myButton.isEnabled = true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        myTextField.endEditing(true)
        return true
    }

    
    
    @IBAction func buttonPressed(_ sender: Any) {
        
        self.performSegue(withIdentifier: "goToLabel", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToLabel" {
            let labelVC = segue.destination as! SecondViewController
            labelVC.textOnLabel = myTextField.text
        }
    }
    
}

