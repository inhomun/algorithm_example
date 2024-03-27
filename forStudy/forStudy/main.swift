//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

import Foundation

func solution(_ nums:[Int]) -> Int {
    func isPrime(_ number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    if number <= 3 {
        return true
    }
    if number % 2 == 0 || number % 3 == 0 {
        return false
    }
    var i = 5
    while i * i <= number {
        if number % i == 0 || number % (i + 2) == 0 {
            return false
        }
        i += 6
    }
    return true
}
    var answer = 0
    for i in 0..<nums.count {
        for j in i+1..<nums.count {
            for k in j+1..<nums.count {
                if isPrime(nums[i]+nums[j]+nums[k]) {
                    answer += 1
                }
            }
        }
    }
    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")
    return answer
}

