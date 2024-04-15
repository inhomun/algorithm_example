//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ n:Int, _ t:Int, _ m:Int, _ p:Int) -> String {
    var num = 0
    var queue = [Character]()
    var answer = ""
    while queue.count < t * m {
        queue += Array(String(num, radix: n))
        num += 1
    }
    var a = queue.enumerated().filter{index, _ in
                                     return m == p ? (index + 1) % m == 0 : (index + 1) % m == p}.map{ _, element in
                                                                     return element}
    for j in a {
        answer += String(j).uppercased
        if answer.count == t {
            return answer
        }
    }
    return String(a).uppercased()
}
