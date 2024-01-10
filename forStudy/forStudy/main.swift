//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
var result = [Int]()
    for i in 0..<numbers.count {
        for j in i+1..<numbers.count {
            result.append(numbers[i] + numbers[j])
        }
    }
    let sortedResult = Array(Set(result)).sorted()
    return sortedResult
}
