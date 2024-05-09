//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ s:String) -> [Int] {
    var answer = [[Int]]()
    var a = s
    a.removeFirst()
    let b = a.popLast()!
    var tmp = [String]()
    var str = ""
    for i in a {
        if i == "{" {
            tmp = [String]()
            str = ""
        }
        else if i.isNumber {
            str += String(i)
        }
        else if i == "}" {
            tmp.append(str)
            let arr = tmp.map { Int($0)! }
            answer.append(arr)
        }
        else if i == "," {
            tmp.append(str)
            str = ""
        }
        else {
            continue
        }
    }
    answer.sort { $0.count < $1.count }
    var temp = [Int]()
    for i in answer {
        for j in i {
            if temp.contains(j) {
                continue
            }
            else {
                temp.append(j)
            }
        }
    }
    return temp
}
