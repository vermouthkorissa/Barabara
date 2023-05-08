//
//  RankingViewController.swift
//  Barabara
//
//  Created by 鈴木理紗子 on 2023/05/08.
//

import UIKit

class RankingViewController: UIViewController {

    @IBOutlet var rankingLabel1: UILabel!
    @IBOutlet var rankingLabel2: UILabel!
    @IBOutlet var rankingLabel3: UILabel!
    
    let savedata: UserDefaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rankingLabel1.text = String(savedata.integer(forKey: "score1"))
        rankingLabel2.text = String(savedata.integer(forKey: "score2"))
        rankingLabel3.text = String(savedata.integer(forKey: "score3"))
        // Do any additional setup after loading the view.
    }
    
    @IBAction func toTop(){
        self.dismiss(animated: true, completion: nil)
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
