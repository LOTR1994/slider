//
//  ViewController.swift
//  CheesePicker
//
//  Created by CS275 Group 7a (Yao Xiao, Eli Gitelman, Brain Rundlet, Mark Kulhowvick) on 10/7/17.
//  Copyright © 2017 Yao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var roundLabel: UILabel!
    
    var targetValue: Int = 0
    var currentValue: Int = 50
    var difference: Int = 0
    var totalscore: Int = 0
    var round: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startOver()
        //currentValue = lroundf(slider.value)
        //targetValue = 1 + Int(arc4random_uniform(100))
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // retart after 'Hit', total socre doesnt clear //
    func Restart() {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = 50
        round += 1
        slider.value = Float(currentValue)
        
        // update the labels //
        targetLabel.text = "\(targetValue)"
        scoreLabel.text = "\(totalscore)"
        roundLabel.text = "\(round)"
    }
    
    // restart whole game, clear totalscore and round. //
    @IBAction func startOver() {
        totalscore = 0
        round = 0
        Restart()
    }
    
    
    @IBAction func showAlert() {
        // Calculate socre //
        let difference = abs(currentValue-targetValue)
        let score = 100 - difference
        totalscore += score
        
        // Show result //
        let message = "Target Value: \(targetValue)" +
            "\nSlider Value: \(currentValue)" + "\nYou got: \(score) "
        
        let alert = UIAlertController(title: "Your Input",
                                      message: message,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK",
                                   style: .default, handler: nil)
        
        alert.addAction(action)
        
        present(alert, animated: true, completion: nil)
        Restart()
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }
}
