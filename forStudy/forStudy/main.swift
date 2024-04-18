//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var answer = 0
    for skills in skill_trees {
        var tmp = Array(skill)
        var str = ""
        var a = skills
        while !a.isEmpty {
            var b = a.removeFirst()
            if tmp.first == b {
                tmp.removeFirst()
                str += String(b)
            }
            else if !tmp.contains(b) {
                str += String(b)
            }
            else {
                break
            }
        }
        if str == skills {
            answer += 1
        }
    }
    return answer
}
