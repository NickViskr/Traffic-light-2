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
    
    private var currentLight = CurrentLight.red
    private let lightIsOff: CGFloat = 0.2
    private let lightIsOn: CGFloat = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switchButton.layer.cornerRadius = 15
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
    }
    
    override func viewWillLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = redLight.frame.width / 2
        greenLight.layer.cornerRadius = redLight.frame.width / 2
        
    }
    
    @IBAction func switchButtonTap() {
        if switchButton.currentTitle == "START" {
            switchButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentLight {
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenLight.alpha = lightIsOn
            yellowLight.alpha = lightIsOff
            currentLight = .red
        }
    }
    
    
}

// MARK: - CurrentLight
extension ViewController {
    private enum CurrentLight {
        case red, yellow, green
    }
}

