//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ n:Int) -> Int {
    var arr = [Int]()
    arr.append(1)
    for i in 1...n {
        if i == 1 {
            arr.append(1)
        }
        else if i == 2 {
            arr.append(2)
        }
        else {
            arr.append((arr[i-2] + arr[i-1])%1234567)
        }
    }
    return arr.last!
}
