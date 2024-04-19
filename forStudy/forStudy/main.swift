//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ id_list:[String], _ report:[String], _ k:Int) -> [Int] {
    var reports = Set(report).map { $0.split(separator: " ").map(String.init)}
    var result = [String:Int]()
    var did = [String:[String]]()
    var answer = [Int]()
    var user = [String]()
    id_list.forEach{ did[$0] = [] }
    for i in reports {
        result[i[1], default: 0] += 1
        did[i[0]]!.append(i[1])
    }
    
    for b in id_list {
        var tmp = 0
        for c in did[b]! {
            if result[c]! >= k {
                tmp += 1
            }
        }
        answer.append(tmp)
    }
    return answer
}
