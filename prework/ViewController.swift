//
//  ViewController.swift
//  prework
//
//  Created by Linh Khanh Hoang on 11/23/23.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor{

        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)

        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
            }
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
    @IBOutlet weak var myName: UILabel!
    @IBOutlet weak var myCollege: UILabel!
    @IBOutlet weak var myJob: UILabel!
    
    @IBAction func changeTextStyle(_ sender: UIButton) {
        
        
        func changeWeight() -> UIFont{
            let weights: [UIFont.Weight] = [.ultraLight, .thin, .light, .regular]
            let randomWeight = weights.randomElement() ?? .regular
            let currentFont = UIFont.systemFont(ofSize: 17.0)
            return UIFont.systemFont(ofSize: currentFont.pointSize, weight: randomWeight)
        }
        let randomWeight = changeWeight()
        myName.font = randomWeight
        myCollege.font = randomWeight
        myJob.font = randomWeight
        
        
    }
}

