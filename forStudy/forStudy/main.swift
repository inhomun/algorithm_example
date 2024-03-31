//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ dartResult:String) -> Int {
    var numArr = [Int]()
    var tmp = ""
    for i in dartResult {
        var a = String(i)
        if a == "S" {
            numArr.append(Int(tmp)!)
            tmp = ""
            continue
        }
        else if a == "D" {
            numArr.append(Int(tmp)!*Int(tmp)!)
            tmp = ""
            continue
        }
        else if a == "T" {
            numArr.append(Int(tmp)!*Int(tmp)!*Int(tmp)!)
            tmp = ""
            continue
        }
        
        if a == "*" {
            if numArr.count > 1 {
            for i in numArr.endIndex-2..<numArr.endIndex {
                numArr[i] *= 2
            }
            }
            else {
                numArr[0] *= 2
                }
            continue
        }
        
        if a == "#" {
            numArr[numArr.endIndex-1] *= -1
            continue
        }
        tmp += a
    }
    var b = numArr.reduce(0, +)
    return b
}
