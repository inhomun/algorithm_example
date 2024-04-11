//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ s:String) -> Int{
    var str = s
    while !str.isEmpty {
        var stack = ""
        var a = [Character]()
        for i in str {
            if stack.last == i {
                stack.removeLast()
                a.append(i)
            }
            else {
                stack += String(i)
            }
        }
        
        if a.isEmpty && !str.isEmpty {
            return 0
        }
        str = stack
    }
    return 1
}
