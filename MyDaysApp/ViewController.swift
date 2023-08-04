//
//  ViewController.swift
//  MyDaysApp
//
//  Created by Egor Ukolov on 04.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    //@IBOutlet var resultButton: UIButton!
    
    private var numberOfDays = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // resultButton.layer.cornerRadius = 12
    }

    @IBAction func resultButtonTapped() {
        infoLabel.text = "Ты наслаждаешься жизнью уже \(numberOfDays)"
    }
    @IBAction func datePicker(_ sender: UIDatePicker) {
        let range = sender.date..<Date.now
        numberOfDays = range.formatted(.components(style: .wide, fields: [.day]))
    }
    
}

