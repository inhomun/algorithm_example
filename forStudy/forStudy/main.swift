//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int) -> Int
{
    var b = n
    let a = String(n, radix: 2).filter{ $0 == "1" }.count
    while b <= 1000000 {
        b += 1
        let c = String(b, radix: 2).filter{ $0 == "1" }.count
        if a == c {
            return b
        }
    }
    return 0
}
