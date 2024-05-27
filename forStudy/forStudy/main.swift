//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ sequence:[Int], _ k:Int) -> [Int] {
    var start = -1
    var end = -1
    var val = 0
    var answer = [[Int]]()
    while end < sequence.count-1 {
        end += 1
        val += sequence[end]
        if val == k {
            answer.append([start + 1, end])
        }
        if val > k {
            while val > k && start < end {
                start += 1
                val -= sequence[start]
            }
            if val == k {
                answer.append([start + 1, end])
            }
        }
    }
    if val == k {
        answer.append([start, end])
    }
    
    answer = answer.sorted {
        if ($0[1] - $0[0]) == ($1[1] - $1[0]) {
            return $0[0] < $1[0]
        }
        else {
            return ($0[1] - $0[0]) < ($1[1] - $1[0])
        }}
    return answer[0]
}
