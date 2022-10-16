//
//  SecondViewController.swift
//  UIKit-Multiple-View-Controllers
//
//  Created by Ulul I. on 16/10/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet private weak var firstNameLbl: UILabel!
    @IBOutlet private weak var lastNameLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.isModalInPresentation = true
        
        
    }
    
    func setup(firstName: String, lastName: String) {
        firstNameLbl.text = firstName
        lastNameLbl.text = lastName
        
    }

    @IBAction func doneButtonTapped(_ sender: UIButton) {
       
        let firstController = self.storyboard!.instantiateViewController(withIdentifier: "first_controller") as! FirstViewController
        
        firstController.loadViewIfNeeded()
        firstController.getName(getFrontLabel: "Hiii")
        

        

        dismiss(animated: true, completion: nil)
        
    }
}
