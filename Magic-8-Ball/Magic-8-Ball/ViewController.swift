//
//  ViewController.swift
//  Magic-8-Ball
//
//  Created by Mami Taniguro on 4/8/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerButton: UIButton!
    @IBOutlet weak var magicBallImageView: UIImageView!
    let ballArray = [#imageLiteral(resourceName: "ball5"),#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball2"),#imageLiteral(resourceName: "ball1"),#imageLiteral(resourceName: "ball4")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // add space and set answerButton's corners round
        let spacing: CGFloat = 8.0
        answerButton.contentEdgeInsets = UIEdgeInsets(top: 0, left: spacing, bottom: 0, right: spacing)
        answerButton.layer.cornerRadius = 10
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        magicBallImageView.image = ballArray.randomElement()
    }
    
}

