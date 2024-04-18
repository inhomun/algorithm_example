//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
    var str = records.map{ $0.split(separator: " ").map(String.init) }
    str.sort { $0[1] == $1[1] ? $0[0] < $1[0] : $0[1] < $1[1] }
    var num = [String]()
    var times = [String:Int]()
    var answer = [String:Int]()
    var b = [Int]()
    while !str.isEmpty {
        var a = str.removeFirst()
        if a[2] == "IN" {
            num.append(a[1])
            let time = a[0].split(separator: ":").map { Int($0)! }
            times[a[1], default: 0] = time[0] * 60 + time[1]
        }
        else {
            var b = num.popLast()!
            let time = a[0].split(separator: ":").map { Int($0)! }
            answer[a[1], default: 0] += (time[0] * 60 + time[1] - times[b]!)
        }
    }
    for i in num {
        answer[i, default: 0] += (23 * 60 + 59) - times[i]!
    }
    for j in answer {
        if fees[0] >= j.value {
            answer[j.key] = fees[1]
        }
        else {
            let double = Double(j.value - fees[0]) / Double(fees[2])
            let int = (j.value - fees[0]) / fees[2]
            var time = 0
            
            if double > Double(int){
                time = int + 1
            }else{
                time = int
            }
            answer[j.key]! = fees[1] + (time * fees[3])
        }
    }
    for i in answer.sorted(){ $0.key < $1.key }{
        b.append(i.value)
    }
    return b
}
