//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ arr:[Int]) -> Int {
    // lcm = a*b / gcd(a,b)
    var b = arr.sorted(by: <)
    var answer = 1
    func gcd (_ org: Int,_ tar: Int) {
        var tmp = 0
        for j in 1...max(org, tar) where org % j == 0 && tar % j == 0 {
            tmp = max(tmp, j)
        }
        answer = org * tar / tmp
        return
    }
    for i in b {
        gcd(answer, i)
    }
    return answer
}
