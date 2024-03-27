//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ s:String, _ n:Int) -> String {
    var answer = ""
    for i in s {
        if i == " " {
            answer += " "
        }
        else {
            var a = 0
            var b = i.asciiValue!
            repeat {
                if b + 1 > 122 {
                    b = 97
                    a += 1
                }
                else if b + 1 > 90 && b < 97 {
                    b = 65
                    a += 1
                }
                else {
                b += 1
                a += 1
                }
            } while n != a
            answer += String(Character(UnicodeScalar(b)))
        }
    }
    return answer
}
