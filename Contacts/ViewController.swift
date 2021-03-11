//
//  ViewController.swift
//  Contacts
//
//  Created by Fidan Oruc on 3/11/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    let names = [
        "Syr Imanova",
        "Fidan Oruczade",
        "Yalchin Huseynli",
        "Nicat Badalov"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
    }


}

extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        return print("you tapped me, please be gentle")
    }
}
extension ViewController: UITableViewDataSource{

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = names[indexPath.row]
        return cell
    }
}
