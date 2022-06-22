//
//  ViewController.swift
//  Traffic light 2
//
//  Created by Николай Выскребенцев on 22.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var switchButton: UIButton!
    
    private var clickCounter = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchButton.layer.cornerRadius = 15
        
    }
    
    @IBAction func switchButton(_ sender: Any) {
        
    }
    
}

