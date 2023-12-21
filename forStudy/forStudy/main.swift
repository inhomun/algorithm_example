//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ food: [Int]) -> String {
    var foodArr = food
    var result = ""
    var tempArr = [String]()
    
    for i in 1..<foodArr.count {
        var j = foodArr[i] / 2
        for l in 0..<j{
            result += String(i)
            tempArr.insert(String(i), at: 0)
        }
    }
    
    result += "0" + tempArr.joined()
    
    return result
}
