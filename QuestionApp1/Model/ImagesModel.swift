//
//  ImagesModel.swift
//  QuestionApp1
//
//  Created by 福井悠都 on 2020/06/27.
//  Copyright © 2020 福井悠都. All rights reserved.
//

import Foundation


class ImagesModel{
    
    //画像名を取得して、その画像名が人間化そうでないかをフラグによって判定するための機能
    
    let imageText:String
    let answer:Bool
    
    init (imageName:String,correctOrNot:Bool){
        
        imageText = imageName
        
        answer = correctOrNot
    }
}
