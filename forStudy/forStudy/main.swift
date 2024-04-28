//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ numbers:[Int]) -> String {
    var a = numbers.sorted{ Int("\($0)\($1)")! > Int("\($1)\($0)")! }
    var b = a.map { String($0) }.joined(separator: "")
    if a[0] == 0 {
        return "0"
    }
    return b
}
