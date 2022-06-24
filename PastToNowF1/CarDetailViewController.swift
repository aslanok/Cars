//
//  CarDetailViewController.swift
//  PastToNowF1
//
//  Created by MacBook on 24.06.2022.
//

import UIKit

class CarDetailViewController: UIViewController {

    @IBOutlet weak var carImage: UIImageView!
    var car : Cars?
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = car?.name
        modelLabel.text = car?.yil
        carImage.image = UIImage(named: car?.image ?? "ferrari")
    }
}
