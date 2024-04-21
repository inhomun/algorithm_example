//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ orders:[String], _ course:[Int]) -> [String] {
    var answer = [String: Int]()
    var arr = [String]()
    let sortedOrders = orders.map { $0.sorted() }
    func dfs(_ target: Int, _ org: [Character],_ index: Int,_ val: String) {
        if val.count == target {
            answer[val, default: 0] += 1
            return
        }
        if index == org.count {
            return
        }
        dfs(target, org, index + 1, val + String(org[index]))
        dfs(target, org, index + 1, val)
    }
    for i in sortedOrders {
        for j in course {
            dfs(j, Array(i), 0, "")
        }
    }
    // for k in course {
    //     var a = answer.filter{ $0.value >= 2 && $0.key.count == k }
    //     var b = a.values.max()!
    //     var c = a.filter{ $0.value == b }.map{ $0.key }
    //     arr.append(contentsOf : c)
    // }
    for k in course {
    // Filter the dictionary to find entries where the value is >= 2 and the key's length is k.
    let filteredEntries = answer.filter { $0.value >= 2 && $0.key.count == k }
    
    // Find the maximum value among these filtered entries, if any.
    if let maxValue = filteredEntries.values.max() {
        // Find all keys that have this maximum value.
        let keysWithMaxValue = filteredEntries.filter { $0.value == maxValue }.map { $0.key }
        
        // Append these keys to the array.
        arr.append(contentsOf: keysWithMaxValue)
    }
}
    return arr.sorted(by: <)
}
