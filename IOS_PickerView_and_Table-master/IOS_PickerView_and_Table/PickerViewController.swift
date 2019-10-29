//
//  ViewController.swift
//  IOS_PickerView_and_Table
//
//  Created by MacStudent on 2019-10-29.
//  Copyright © 2019 Karan. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    
    @IBOutlet weak var PickerUI: UIPickerView!
    
   
    @IBOutlet weak var lblCountry: UILabel!
    

    let countries = ["India","Canada","USA","China","Pakistan","Russia","Nepal","France","Mexico"]
    
     let currency = ["Rupee","CAD","USD","Yan","Prupee","Euro","Nrupee","euro","Medollar"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.PickerUI.delegate = self
        self.PickerUI.dataSource = self
    }
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component==1
        {
            return self.countries[row]
        }
        else{
            return self.currency[row]
        }
       // return self.countries[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        let r1=pickerView.selectedRow(inComponent: 0)
        let r2=pickerView.selectedRow(inComponent: 1)
        var str=self.countries[r2]
        var str2=self.currency[r1]
    
        lblCountry.text="\(str)-\(str2)"
        
//        if component==1
//        {
//            lblCountry.text=str
//        print(self.countries[row])
//        }
//        else
//        {
//            lblCountry.text=str2
////            //lblCountry.text=self.currency[row]
////            print(self.currency[row])
//        }
    }
}

