//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ s:String) -> Int {
    var tmp = Array(s)
    var answer = 0
    for i in 0..<tmp.count {
            var stack = [Character]()
        for j in tmp {
            if j == "[" || j == "{" || j == "(" {
                stack.append(j)
            }
            else {
                if j == "]" {
                    if stack.last == "[" {
                        var a = stack.removeLast()
                    }
                    else {
                        stack.append(j)
                    }
                }
                else if j == "}" {
                    if stack.last == "{" {
                        var a = stack.removeLast()
                    }
                    else {
                        stack.append(j)
                    }
                }
                else if j == ")" {
                    if stack.last == "(" {
                        var a = stack.removeLast()
                    }
                    else {
                        stack.append(j)
                    }
                }
            }
        }
        if stack.isEmpty {
            answer += 1
        }
        var b = tmp.removeFirst()
        tmp.append(b)
    }
    return answer
}
