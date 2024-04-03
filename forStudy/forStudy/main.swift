//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    var tmp = [Int]()
    for i in s {
        if i == "(" {
            tmp.append(1)
        }
        else {
            if tmp.contains(1) {
                var a = tmp.popLast()
            }
            else {
                return false
            }
        }
    }
    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")

    return tmp.isEmpty
}
