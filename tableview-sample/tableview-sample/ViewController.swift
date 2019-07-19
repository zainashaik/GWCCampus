//
//  ViewController.swift
//  tableview-sample
//
//  Created by GWC on 7/11/19.
//  Copyright © 2019 GWC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableview: UITableView!
    
    var animalNames = ["elephant", "penguin", "shark", "dolphin", "lion"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableview.dataSource = self
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //TODO: update with array count
        return animalNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell", for: indexPath)
        cell.textLabel?.text = animalNames[indexPath.row]
        return cell
    }
    
}

