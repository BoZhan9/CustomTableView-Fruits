//
//  ViewController.swift
//  CustomTableView-Fruits
//
//  Created by Brian Zhang on 9/20/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var arr = ["apples", "apricots", "bananas", "blueberries", "cherries", "grapes", "lemons", "oranges", "strawberries", "watermelons"]
    
    @IBOutlet weak var tblView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tblView.delegate = self
        tblView.dataSource = self
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.imgView.image = UIImage(named: "\(arr[indexPath.row])")
        cell.lblImage.text = "\(arr[indexPath.row])"
        
        return cell
    }


}

