//
//  ViewController.swift
//  PickersAndPhotos
//
//  Created by lee bennett on 10/20/21.
//

import UIKit


class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var cityPicker: UIPickerView!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    let cities = [
        "San Francisco",
        "Los Angeles",
        "Irvine",
        "Denver",
        "Seattle",
        "San Antonio"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let futureDate = Date(timeIntervalSinceNow: 60 * 60 * 24 * 7)
        datePicker.date = futureDate
        // Do any additional setup after loading the view.
    }

    @IBAction func cityDidSelect(_ sender: UIButton) {
        let selectedRow = cityPicker.selectedRow(inComponent: 0)
        print(cities[selectedRow])
    }
    
    @IBAction func selectDateDidTapped(_ sender: UIButton) {
        let date = datePicker.date
        print(date.timeIntervalSince1970)
    }
    
    // UIPickerViewDataSource
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return cities.count
    }
    
    // UIPickerViewDelegate
//    
//    func pickerView(_ pickerView: UIPickerView, viewForRow row: Int, forComponent component: Int, reusing view: UIView?) -> UIView {
//        let imageView = UIImageView()
//        return imageView
//    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cities[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print("user selected \(row) \(component)")
    }
}

