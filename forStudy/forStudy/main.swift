//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ s:String) -> String {
    var cnt = 0
    var answer = ""
    for word in s {
        if word == " " {
            cnt = 0
            answer += String(word)
        } else {
            if cnt % 2 == 0 {
                answer += word.uppercased()
                cnt += 1
            } else {
                answer += word.lowercased()
                cnt += 1
            }
        }
    }
    return answer
    }
