//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ arr: [Int], _ queries: [[Int]]) -> [Int] {
    var result = [Int]()
    
    for query in queries {
        let s = query[0]
        let e = query[1]
        let k = query[2]
        
        let subArr = Array(arr[s...e])
        let filteredArr = subArr.filter { $0 > k }
        if let minValue = filteredArr.min() {
            result.append(minValue)
        } else {
            result.append(-1)
        }
    }
    
    return result
}
