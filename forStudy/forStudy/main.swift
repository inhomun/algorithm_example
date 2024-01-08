//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int) -> Int {
    let ternary = String(n, radix: 3)
    let reversedTernary = String(ternary.reversed())
    let decimal = Int(reversedTernary, radix: 3)
    return decimal!
}
