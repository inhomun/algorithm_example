//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int) -> Int
{
    var tmp = n
    var answer:Int = 0
    repeat {
        answer += (tmp % 10)
        tmp = tmp / 10
    } while tmp > 0

    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")
    
    return answer
}
