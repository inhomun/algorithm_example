//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0
    let a = A.sorted(by: <)
    let b = B.sorted(by: >)
    for i in 0..<A.count {
        ans += a[i]*b[i]
    }
    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")

    return ans
}
