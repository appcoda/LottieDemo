//
//  ViewController.swift
//  LottieDemo
//
//  Created by Simon Ng on 24/4/2017.
//  Copyright © 2017 AppCoda. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let animationView = LOTAnimationView(name: "servishero_loading") {
//        if let animationView = LOTAnimationView(contentsOf: URL(string: "https://github.com/airbnb/lottie-ios/raw/master/Example/Assets/LottieLogo1.json")!) {
            animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            animationView.center = self.view.center
            
            animationView.loopAnimation = true
            animationView.contentMode = .scaleAspectFill
            animationView.animationSpeed = 0.5
            
            // Applying UIView animation
            let minimizeTransform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            animationView.transform = minimizeTransform
            UIView.animate(withDuration: 3.0, delay: 0.0, options: [.repeat, .autoreverse], animations: {
                animationView.transform = CGAffineTransform.identity
            }, completion: nil)
            
            view.addSubview(animationView)
        
            animationView.play()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

