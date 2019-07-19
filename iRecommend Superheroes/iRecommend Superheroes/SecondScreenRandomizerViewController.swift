//
//  SecondScreenRandomizerViewController.swift
//  iRecommend Superheroes
//
//  Created by GWC on 7/9/19.
//  Copyright © 2019 GWC. All rights reserved.
//

import UIKit

class SecondScreenRandomizerViewController: UIViewController {

    @IBOutlet weak var mainImage: UIImageView!
    
    let superheroes = ["babygroot", "blackpanther", "gamora", "IronMan-EndgameProfile", "shuri", "spiderman tom holland"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setRandomItem()
        // Do any additional setup after loading the view.
    }
    
    func setRandomItem(){
        //var itemName: String? itemName doesn't have to be a string
        guard let item = superheroes.randomElement() else {return}
        //testing for capstone project
        //var tasksCompleted: [String]
        //tasksCompleted.append("\(item) /n")
        mainImage.image = UIImage(named: item)
    }
    
    @IBAction func superbutton(_ sender: Any) {
        setRandomItem()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
