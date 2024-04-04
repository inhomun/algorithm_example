//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var stack = [Character]()
    var cnt = k
    var numCount = number.count - k
    for i in number {
        while !stack.isEmpty && cnt > 0 && stack.last! < i {
            var b = stack.popLast()
            cnt -= 1
        }
        
        if stack.count < numCount {
            stack.append(i)
        }
    }
    return String(stack)
}
