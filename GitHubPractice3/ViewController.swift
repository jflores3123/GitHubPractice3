//
//  ViewController.swift
//  GitHubPractice3
//
//  Created by Johan Flores on 11/17/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var textField : UITextField!
    
        var array : [String] = ["a", "b", "c"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       tableView.dataSource = self
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        cell.textLabel?.text = array[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }

}

