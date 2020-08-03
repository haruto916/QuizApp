//
//  NextViewController.swift
//  QuestionApp1
//
//  Created by 福井悠都 on 2020/06/26.
//  Copyright © 2020 福井悠都. All rights reserved.
//

import UIKit


protocol NowScoreDelegate {
    
    func nowScore(score:Int)
    
}

class NextViewController: UIViewController {
    
    
    @IBOutlet weak var correctLabel: UILabel!
    
    
    
    @IBOutlet weak var wrongLabel: UILabel!
    
    var delegate:NowScoreDelegate?
    
   var  correctedCount = Int()
    var wrongCount = Int()
    
    var beforeCount = Int()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        correctLabel.text = String(correctedCount)
        wrongLabel.text = String(wrongCount)
        
        if UserDefaults.standard.object(forKey: "beforeCount") != nil{
            
            beforeCount = UserDefaults.standard.object(forKey: "beforeCount") as! Int
        }

        
    }
    
    
    @IBAction func back(_ sender: Any) {
        
        //もし最高得点であれば入れ替え
        if beforeCount < correctedCount{
            
            UserDefaults.standard.set(correctedCount, forKey: "beforeCount")
            delegate?.nowScore(score: correctedCount)
        }else if beforeCount > correctedCount{
            
            UserDefaults.standard.set(beforeCount, forKey: "beforeCount")
        }
        
        
        //そうでない場合は、入れ替えない
        
        dismiss(animated: true, completion: nil)
    }
    
    
    

}
