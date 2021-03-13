//
//  ViewController.swift
//  GirlsCodeFestEventApp
//
//  Created by Paula on 2021-03-13.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    @IBOutlet weak var weekend1Button: UIButton!
    @IBOutlet weak var weekend2Button: UIButton!
    @IBOutlet weak var weekend3Button: UIButton!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        weekend1Button.layer.cornerRadius = 10
        weekend2Button.layer.cornerRadius = 10
        weekend3Button.layer.cornerRadius = 10
        registerButton.layer.cornerRadius = 10
    }
    
    @IBAction func tapWeekend1() {
        dateLabel.text = "Mar 13"
        timeLabel.text = "10am-4pm"
    }
    
    @IBAction func tapWeekend2() {
        dateLabel.text = "Mar 20"
        timeLabel.text = "10am-4pm"
    }
    
    @IBAction func tapWeekend3() {
        dateLabel.text = "Mar 28"
        timeLabel.text = "10am-4pm"
    }
    
    @IBAction func tapRegisterButton() {
        guard let url = URL(string: "https://linktr.ee/girlscodefest") else {return}
        let safariViewController = SFSafariViewController(url: url)
        self.present(safariViewController, animated: true, completion: nil)
    }


}

