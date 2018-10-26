//
//  ViewController.swift
//  FlightBooking
//
//  Created by YooKyung Kim on 27/10/2018.
//  Copyright © 2018 YooKyung Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var departureDateButton: UIButton!
    @IBOutlet weak var returnDateLabel: UILabel!
    @IBOutlet weak var returnDateButton: UIButton!
    @IBOutlet weak var selectDatePicker: UIDatePicker!
    var buttonTag:Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        returnDateLabel.isHidden = true
        returnDateButton.isHidden = true
        selectDatePicker.isHidden = true
    }
    
    @IBAction func showDatePickerAction(_ sender: UIButton) {
        if selectDatePicker.isHidden == false {
            selectDatePicker.isHidden = true
        } else {
            selectDatePicker.isHidden = false
        }
        buttonTag = sender.tag
    }
    
    @IBAction func ShowReturnDateAction(_ sender: UISwitch) {
        if sender.isOn {
            returnDateLabel.isHidden = false
            returnDateButton.isHidden = false
        } else {
            returnDateLabel.isHidden = true
            returnDateButton.isHidden = true
        }
    }
    
    @IBAction func selectedDateAction(_ sender: UIDatePicker) {
        let formatter = DateFormatter()
        formatter.dateFormat = "YY-MM-d hh:mma"
        
        let dateString = formatter.string(from: sender.date)
        if buttonTag == 1 {
            departureDateButton.setTitle(dateString, for: UIControlState.normal)
        } else {
            returnDateButton.setTitle(dateString, for: UIControlState.normal)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
        selectDatePicker.isHidden = true
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

