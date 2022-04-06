//
//  ViewController.swift
//  SwitchAnimate
//
//  Created by Тимур on 05.04.2022.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet weak var animateView: SpringView!
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    @IBOutlet weak var runAnimateButton: UIButton!
    
    private var animate = Animate.getAnimate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        runAnimateButton.layer.cornerRadius = 10
        animateView.layer.cornerRadius = 10
        setAnimate(of: animate)
        setLabel(of: animate)
    }

    @IBAction func runAnimatePressed() {
        getAnimate(of: animate)
        let animate = Animate.getAnimate()
        runAnimateButton.setTitle("Run \(animate.preset)", for: .normal)
        self.animate = animate
    }
    
    private func getAnimate(of animate: Animate) {
        setAnimate(of: animate)
        animateView.animate()
        setLabel(of: animate)
    }
    
    private func setLabel(of animate: Animate) {
        presetLabel.text = "preset: \(animate.preset)"
        curveLabel.text = "curve: \(animate.curve)"
        forceLabel.text = "force: \(String(format: "%0.2f", animate.focre))"
        durationLabel.text = "duration: \(String(format: "%0.2f", animate.duration))"
        delayLabel.text = "delay: \(String(format: "%0.2f" ,animate.delay))"
    }
    
    private func setAnimate(of animate: Animate) {
        animateView.animation = animate.preset
        animateView.curve = animate.curve
        animateView.force = CGFloat(animate.focre)
        animateView.duration = CGFloat(animate.duration)
        animateView.delay = CGFloat(animate.delay)
        
    }
}

