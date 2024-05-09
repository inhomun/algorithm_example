//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    var answer = 0
    func isPrime(_ checkNumber: Int) {
        if checkNumber < 2 {
            return
        }
        else if checkNumber == 2 || checkNumber == 3 || checkNumber == 5 || checkNumber == 7 {
            answer += 1
            return
        }
        else if checkNumber < 10 {
            return
        }
    let criterion = Int(Double(checkNumber).squareRoot())
    for i in 2...criterion {
        if checkNumber % i == 0 {
            return
        }
    }
    answer += 1
    return
}
    var target = String(n, radix: k)
    var tmp = ""
    for i in target {
        if i == "0" {
            if tmp != "" {
                isPrime(Int(tmp)!)
                tmp = ""
            }
            else {
                tmp = ""
            }
        }
        else {
            tmp += String(i)
        }
    }
    if tmp != "" {
        isPrime(Int(tmp)!)
    }
    return answer
}
