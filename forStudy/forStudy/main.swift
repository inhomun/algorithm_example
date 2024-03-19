//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation
func solution(_ n:Int64) -> Int64 {
    let squearRoot = sqrt(Double(n))
    if squearRoot == Double(Int64(squearRoot)) {
        return Int64(pow(squearRoot+1, 2))
    }
    else {
        return -1
    }
}
