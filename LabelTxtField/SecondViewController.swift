//
//  SecondViewController.swift
//  LabelTxtField
//
//  Created by mac mini on 2/4/22.
//

import UIKit

class SecondViewController: UIViewController {
    
    private var textOnLabel: String?

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.text = textOnLabel

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
