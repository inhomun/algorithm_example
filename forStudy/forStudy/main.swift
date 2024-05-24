//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ dots:[[Int]]) -> Int {
    func check(_ dot1: [Int],_ dot2: [Int],_ dot3: [Int],_ dot4: [Int]) -> Int {
        if Double(abs(dot1[1] - dot2[1])) / Double(abs(dot1[0] - dot2[0])) == Double(abs(dot3[1] - dot4[1])) / Double(abs(dot3[0] - dot4[0])) {
            return 1
        }
        return 0
    }
    var answer = [Int]()
    answer.append(check(dots[0],dots[1],dots[2],dots[3]))
    answer.append(check(dots[0],dots[2],dots[1],dots[3]))
    answer.append(check(dots[0],dots[3],dots[2],dots[1]))
    return answer.max()!
}
