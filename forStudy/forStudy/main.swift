//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int) -> Int
{
    var a = n
    var ans = 1
    while a != 1 {
        if a % 2 == 0 {
            a /= 2
        }
        else {
            a = (a-1)/2
            ans += 1
        }
    }
    
    return ans
}
