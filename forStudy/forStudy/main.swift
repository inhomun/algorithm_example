//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int) -> Int {
    var sum = 0
    if n%2 == 1 {
        for i in 0...n {
            if i%2 == 1 {
                sum += i
            }
        }
    }
    else {
        for i in 0...n+1 {
            if i%2 == 0 {
                sum += i*i
            }
        }
    }
    return sum
}
