//
//  SoundFile.swift
//  QuestionApp1
//
//  Created by 福井悠都 on 2020/06/27.
//  Copyright © 2020 福井悠都. All rights reserved.
//

import Foundation
import AVFoundation

class SoundFile{
    
    
    var player:AVAudioPlayer?
    
    func playSound(fileName:String,extensionName:String){
        
        //再生する
        let soundURL = Bundle.main.url(forResource: fileName, withExtension: extensionName)
        
        do {
            
            //効果音を鳴らす
            player = try AVAudioPlayer(contentsOf: soundURL!)
            player?.play()
        } catch  {
            
            print("エラーです！")
        }
        
    }
}
