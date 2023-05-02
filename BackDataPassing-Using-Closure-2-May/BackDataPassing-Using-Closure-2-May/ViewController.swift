//
//  ViewController.swift
//  BackDataPassing-Using-Closure-2-May
//
//  Created by Mac on 02/05/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstNameLbl: UILabel!
    
    @IBOutlet weak var lastNameLbl: UILabel!
    
    @IBOutlet weak var rollNoLbl: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    @IBAction func addDataButton(_ sender: Any) {
        let addDataViewController = storyboard?.instantiateViewController(withIdentifier: "DataAddViewController") as! DataAddViewController
        addDataViewController.backDataUsingClosure = {
            (firstname,lastname,rollno) in
            self.firstNameLbl.text = firstname
            self.lastNameLbl.text = lastname
            self.rollNoLbl.text = rollno.description
        }
        navigationController?.pushViewController(addDataViewController, animated: true)
        
        
    }
}

