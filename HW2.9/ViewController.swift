//
//  ViewController.swift
//  HW2.9
//
//  Created by Vladyslav Haidaienko on 01.10.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var animationLabel: UILabel!
    @IBOutlet var animationView: SpringView!
    
    private var animation = Animation.getSomeAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animationLabel.text = animation.description
    }
    
    @IBAction func animationButtonPressed(_ sender: UIButton) {
        animationLabel.text = animation.description
        
        animationView.animation = animation.name
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.curve = animation.curve
        animationView.animate()
        
        animation = Animation.getSomeAnimation()
        sender.setTitle("Run: \(animation.name)", for: .normal)
    }
    
}

