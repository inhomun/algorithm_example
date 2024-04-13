//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int, _ a:Int, _ b:Int) -> Int
{
    var valA = a
    var valB = b
    var answer = 0
    while !(valA == valB) {
        valA = Int(ceil(Double(valA) / 2))
        valB = Int(ceil(Double(valB) / 2))
        answer += 1
    }

    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")

    return answer
}
