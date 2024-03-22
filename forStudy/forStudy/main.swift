//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

for i in 1...b {
    var tmp = ""
    for j in 1...a {
        tmp += "*"
    }
    print("\(tmp)")
}
