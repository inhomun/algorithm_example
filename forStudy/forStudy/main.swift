//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    var answer = ""
    for (idx, i) in cipher.enumerated() {
        if (idx+1) % code == 0 {
            answer.append(String(i))
        }
    }
    return answer
}
