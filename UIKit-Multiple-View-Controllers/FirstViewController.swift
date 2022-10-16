//
//  ViewController.swift
//  UIKit-Multiple-View-Controllers
//
//  Created by Ulul I. on 16/10/22.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet private weak var frontLabel: UIButton!
    
    @IBOutlet weak var frontText: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        frontText.text = "Type"
        
        //dismiss(animated: true, completion: nil)
    }
    
    func getName(getFrontLabel: String) {
        frontText.text = getFrontLabel
    }

    
    @IBAction func didTapButton(_ sender: Any) {
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let secondController = self.storyboard!.instantiateViewController(withIdentifier: "second_controller") as! SecondViewController
        
        secondController.loadViewIfNeeded()
        secondController.view.backgroundColor = .systemBlue
        secondController.setup(firstName: "Ulul", lastName: "Ilmi")
        
        self.present(secondController, animated: true)
    }
    
    
}

