//
//  ViewController.swift
//  PastToNowF1
//
//  Created by MacBook on 24.06.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let carsarray : [Cars] = [
    Cars(name: "Ferrari", image: "ferrari" , yil: "1950"),
    Cars(name: "Red Bull", image: "redbull", yil: "2021"),
    Cars(name: "McLaren", image: "mclaren", yil: "2022")
    ]
    
    var selectedCar: Cars?
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        self.tableView.rowHeight = 100

    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return carsarray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "formulaCell")!
        cell.textLabel?.text = carsarray[indexPath.row].name
        cell.imageView?.image = UIImage(named: carsarray[indexPath.row].image ?? "ferrari")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        goDetail(car: carsarray[indexPath.row])
    }
    func goDetail(car : Cars){
        selectedCar = car
        performSegue(withIdentifier: "goCarDetail", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goCarDetail" {
            let carDetailVC = segue.destination as! CarDetailViewController
            carDetailVC.car = selectedCar
        }
    }
}

