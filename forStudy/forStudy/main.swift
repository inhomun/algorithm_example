//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var answer = 0
    func dfs(_ number: Int, _ step: Int) {
        if step == numbers.count {
            if number == target {
                answer += 1
            }
        }
        else {
            dfs(number + numbers[step], step + 1)
            dfs(number - numbers[step], step + 1)
        }
    }
    dfs(0, 0)
    return answer
}
