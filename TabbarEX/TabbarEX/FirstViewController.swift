//
//  FirstViewController.swift
//  TabbarEX
//
//  Created by YooKyung Kim on 11/01/2019.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        outputLabel.text = "1번 버튼이 눌렸습니다."
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
