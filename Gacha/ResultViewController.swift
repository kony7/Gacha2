//
//  ResultViewController.swift
//  Gacha
//
//  Created by SeinaKonishi on 2022/02/08.
//

import UIKit

class ResultViewController: UIViewController {
    
    var number: Int!
    
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        number = Int.random(in: 0...9)
        if number == 9{
            monsterImageView.image = UIImage(named: "01M")
            backgroundImageView.image = UIImage(named: "01BG")
        }else if number > 7{
            monsterImageView.image = UIImage(named: "02M")
            backgroundImageView.image = UIImage(named: "02BG")
        }else{
            monsterImageView.image = UIImage(named: "03M")
            backgroundImageView.image = UIImage(named: "03BG")
        }

        // Do any additional setup after loading the view.
    }
    
    @IBAction func back(){
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
