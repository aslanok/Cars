//
//  InfoViewController.swift
//  PastToNowF1
//
//  Created by MacBook on 24.06.2022.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var txtLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtLabel.text = "Formula One automobile racing has its roots in the European Grand Prix championships of the 1920s and 1930s, though the foundation of the modern Formula One began in 1946 with the Fédération Internationale de l'Automobile's (FIA) standardisation of rules, which was followed by a World Championship of Drivers in 1950."
        txtLabel.numberOfLines = 0
        txtLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        imageView.image = UIImage(named: "f1")
    }

}
