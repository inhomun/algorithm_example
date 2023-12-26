//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ ingredient:[Int]) -> Int {
   var stack = [Int]()
    let burger = [1, 2, 3, 1]
    var hamcnt = 0
    
    for i in ingredient {
        stack.append(i)
        
        if stack.count >= 4 {
            if Array(stack.suffix(4)) == burger {
                hamcnt += 1
                stack.removeLast(4)
            }
        }
    }
    
    return hamcnt
}
