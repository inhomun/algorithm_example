//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ number:[Int]) -> Int {
    var answer = 0
    func combinations<T>(_ array: [T], _ k: Int) -> [[T]] {
    if k == 0 {
        return [[]]
    }

    guard !array.isEmpty else {
        return []
    }

    let head = array.first!
    let subarray = Array(array.dropFirst())

    let headCombinations = combinations(subarray, k - 1).map { [head] + $0 }
    let tailCombinations = combinations(subarray, k)

    return headCombinations + tailCombinations
}
    let result = combinations(number, 3)
    for i in result {
        var sum = 0
        for j in i {
            sum += j
        }
        if sum == 0 {
            answer += 1
        }
    }
    return answer
}
