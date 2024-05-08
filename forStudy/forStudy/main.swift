//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ numbers:String) -> Int {
    var temp = Array(numbers).map { String($0) }
    var answer = [String]()
    var val = 0
    func permutation(_ a: [String],_ k: Int) {
        var result = [String]()
        var visited = [Bool](repeating: false, count: a.count)
    
    func permut(_ now: String) {
        if now.count == k {
            result.append(now)
            return
        }
    
        for i in 0..<a.count where !visited[i] {
            visited[i] = true
            permut(now + String(a[i]))
            visited[i] = false
        }
    }
        permut("")
        answer += result
        return
    }
        
        
    func isPrimeNumber(_ n: Int) -> Bool {
    if n < 2 {
        return false
    }
    for i in 2..<n {
        if n % i == 0 { return false }
    }
    return true
}
    for i in 1...numbers.count {
        permutation(temp, i)
    }
    var tmp = Set(answer.compactMap { Int($0)! })
    for i in tmp {
        if isPrimeNumber(i) {
            val += 1
        }
        else {
            continue
        }
    }
    return val
}
