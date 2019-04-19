//
//  ViewController.swift
//  Latte
//
//  Created by 이현지 on 18/04/2019.
//  Copyright © 2019 이현지. All rights reserved.
//

import UIKit


class DetailViewController: UIViewController {
    
    var birthday: Date?
    
    @IBOutlet weak var MessageDetail: UILabel!
    
    @IBOutlet weak var EmoticonDetail: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //createBirthday()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        if let birthday = birthday {
            //self.title = birthday.Year
            MessageDetail.text = "\(birthday.Name)"
            EmoticonDetail.text = "\(birthday.Year)년 \(birthday.Month)월 \(birthday.Day)일"
        }
    }


}

