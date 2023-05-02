//
//  DataAddViewController.swift
//  BackDataPassing-Using-Closure-2-May
//
//  Created by Mac on 02/05/23.
//

import UIKit

class DataAddViewController: UIViewController {

    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var rollNoTextField: UITextField!

    var backDataUsingClosure: ((String,String,Int)->Void)?
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true

       
    }
    

    @IBAction func savebutton(_ sender: Any) {
        guard let backData = backDataUsingClosure else { return  }
        guard let firstName = firstNameTextField.text,
        let lastName = lastNameTextField.text,
            let rollNo = rollNoTextField.text?.codingKey.intValue
        else {
            print("Data Is Empty")
            return  }
        backData(firstName,lastName,rollNo)
        navigationController?.popViewController(animated: true)
    }
    
}

