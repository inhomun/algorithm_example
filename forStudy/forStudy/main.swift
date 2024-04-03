//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    let day = today.components(separatedBy: ".").compactMap{ Int($0)! }
    let target = day[0]*12*28+day[1]*28+day[2]
    var term = [[String]]()
    for k in terms {
        term.append(k.components(separatedBy: " "))
    }
    var answer = [Int]()
    for (idx, i) in privacies.enumerated() {
        let a = i.components(separatedBy: " ")
        var thisDay = a[0].components(separatedBy: ".").compactMap{ Int($0)! }
        for j in term {
            if a[1] == j[0] {
                thisDay[1] += Int(j[1])!
                if target >= thisDay[0]*12*28+thisDay[1]*28+thisDay[2] {
                    answer.append(idx+1)
                }
            }
        }
    }
    return answer
}
