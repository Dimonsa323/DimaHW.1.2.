//
//  ViewController.swift
//  DimaHW.1.2.
//
//  Created by Дима Губеня on 19.06.2022.
//

import UIKit

enum TrafficLight {
    case red, yellow, green
}

class ViewController: UIViewController {

    
    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yellowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    private var trafficLight = TrafficLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 20
        
        redLight.alpha = lightIsOff
        yellowLight.alpha = lightIsOff
        greenLight.alpha = lightIsOff
        
        print("размер стороны доступны из viewWillLayoutSubviews", redLight.frame.height)
    }
    override func viewDidLayoutSubviews() {
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yellowLight.layer.cornerRadius = yellowLight.frame.width / 2
        greenLight.layer.cornerRadius = yellowLight.frame.width / 2
    }
    
    @IBAction func startButtonPressed() {
        startButton.setTitle("NEXT", for: .normal)
        
        
    }
}

