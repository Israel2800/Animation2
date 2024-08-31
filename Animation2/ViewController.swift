//
//  ViewController.swift
//  Animation2
//
//  Created by Paola Delgadillo on 8/31/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var viewToTransform: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    @IBAction func startTransformation(_ sender: UIButton) {
        let cornerRadius = (viewToTransform.cornerRadius == 0) ? 50.0 : 0
        let color = startButton.backgroundColor
        let reverseColor = startButton.tintColor
        let scaleFactor = 1.5
        let reverseScaleFactor = (1.0 / scaleFactor).rounded()
        
        startButton.animateTransform(to: CGAffineTransform(scaleX: scaleFactor, y: scaleFactor), duration: 0.3,completion: {_ in
            self.startButton.animateTransform(to: CGAffineTransform(scaleX: reverseScaleFactor, y: reverseScaleFactor), duration: 0.3)
        } )
        startButton.animateBackgroundColor(to: reverseColor!, duration: 0.3)
        startButton.animateTintColor(to: color!, duration: 0.3)
        startButton.animateBorderColor(to: color!, duration: 0.3)
        viewToTransform.animateCornerRadius(to: cornerRadius, duration: 0.3)
        viewToTransform.animateBackgroundColor(to: color!, duration: 0.3)
        viewToTransform.animateBorderColor(to: reverseColor!, duration: 0.3)
    }
    
}

