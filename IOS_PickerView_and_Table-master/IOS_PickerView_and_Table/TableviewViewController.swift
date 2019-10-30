//
//  TableviewViewController.swift
//  IOS_PickerView_and_Table
//
//  Created by Ankita Jain on 2019-10-29.
//  Copyright © 2019 Karan. All rights reserved.
//

import UIKit

class TableviewViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    let country=["India","Canada","America","China"]
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return country.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       let cell=UITableViewCell()
    
        cell.textLabel?.text=country[indexPath.row]
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(country[indexPath.row])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.delegate=self
        self.tableView.dataSource=self
        // Do any additional setup after loading the view.
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
