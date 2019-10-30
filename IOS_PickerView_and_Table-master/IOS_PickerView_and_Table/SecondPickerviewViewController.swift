//
//  SecondPickerviewViewController.swift
//  IOS_PickerView_and_Table
//
//  Created by Ankita Jain on 2019-10-29.
//  Copyright © 2019 Karan. All rights reserved.
//

import UIKit

class SecondPickerviewViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    
    let countrydict:[String:[String]]=["India":["Punjab","Haryana","Rajasthan","Himachal"],"Canada":["Ontario","Bc"]]
    
    weak var CountryStatePickerView: UIPickerView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.CountryStatePickerView.delegate=self
        self.CountryStatePickerView.dataSource=self

//    let countryName=["India"]
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if component==0
        {
            return countrydict.keys.count
    }
        return countrydict.values.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component==0
        {
            return "\(countrydict.keys)"
        }
        return "\(countrydict.values)"
    }
   
}
