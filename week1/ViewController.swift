//
//  ViewController.swift
//  week1
//
//  Created by MIN SEONG KIM on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    let colors: [UIColor] = [.cyan, .brown, .lightGray]
    @IBOutlet var movieImages: [UIImageView]!
    @IBOutlet weak var playButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        designMovieImages()
        designPlayButton()
    }
    
    func designMovieImages() {
        for imageView in movieImages {
            imageView.layer.cornerRadius = (imageView.frame.height / 2)
            imageView.layer.borderWidth = 4
            imageView.layer.borderColor = colors.randomElement()?.cgColor
        }
    }
    
    func designPlayButton() {
        playButton.layer.cornerRadius = 5
    }


}



