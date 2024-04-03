//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ s:String) -> String {
    var a = s.components(separatedBy: " ")
    for (idx1, i) in a.enumerated() {
        var answer = ""
        for (idx, j) in i.enumerated() {
            if idx == 0 {
                answer += j.uppercased()
            }
            else {
                answer += j.lowercased()
            }
        }
        a[idx1] = answer
    }
    return a.joined(separator: " ")
}
