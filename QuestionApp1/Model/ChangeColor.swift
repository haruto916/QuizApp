//
//  ChangeColor.swift
//  QuestionApp1
//
//  Created by 福井悠都 on 2020/06/27.
//  Copyright © 2020 福井悠都. All rights reserved.
//

import Foundation
import UIKit

class ChangeColor{
    
    func changecolor(topR:CGFloat,topG:CGFloat,topB:CGFloat,topAlpha:CGFloat
        ,bottomR:CGFloat,bottomG:CGFloat,bottomB:CGFloat,bottomAlpha:CGFloat)->CAGradientLayer{
        
        //グラデーションの開始色
        let topColor = UIColor(red: topR, green: topG, blue: topB, alpha: topAlpha)
        
        
        let bottomColor = UIColor(red: bottomR, green: bottomG, blue: bottomB, alpha: bottomAlpha)
        
        
        //グラデーションの色を配列で管理します
        
        let gradientColor = [topColor.cgColor,bottomColor.cgColor]
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColor
        
        return gradientLayer
        
        
        
        
    }
    
    
    
}
