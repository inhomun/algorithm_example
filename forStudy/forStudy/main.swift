//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var number = numbers
    var stack = [Int]()
    var answer = Array(repeating: -1, count: numbers.count)
    for i in 0..<number.count {
        while !stack.isEmpty && number[stack.last!] < number[i] {
            answer[stack.popLast()!] = number[i]
        }
        stack.append(i)
    }
    return answer
}
