//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ arr:[Int]) -> [Int] {
    var tmp = arr
    tmp.remove(at: tmp.firstIndex(of: tmp.min()!)!)
    if tmp.count == 0 {
        tmp.append(-1)
        return tmp
    }
    else {
    return tmp
    }
}
