//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var result = [String]()
    var answer = [String]()
    for i in 0..<arr1.count {
        result.append(String(arr1[i] | arr2[i],radix: 2))
    }
    for j in result {
        var tmp = ""
        if j.count < n {
                for _ in 1...n-j.count {
                    tmp += " "
                }
            }
        for k in j {
            if k == "1" {
                tmp += "#"
            }
            else if k == "0" {
                tmp += " "
            }
        }
        answer.append(tmp)
    }
    return answer
}
