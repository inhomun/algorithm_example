//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ friends:[String], _ gifts:[String]) -> Int {
    // a - 준 사람 b - 받은 사람 gifts
    var giftScore : [Int] = Array(repeating: 0, count: friends.count)
    var giftRelation : [[Int]] = Array(repeating: Array(repeating: 0,count: friends.count), count: friends.count )
    var answer : [Int] = Array(repeating: 0, count: friends.count)
    for i in gifts {
        let a = i.components(separatedBy: " ")
        var b = friends.firstIndex(of: a[0])!
        var c = friends.firstIndex(of: a[1])!
        giftRelation[b][c] += 1
        giftScore[b] += 1
        giftScore[c] -= 1
    }
    for j in 0..<friends.count {
        for k in j+1..<friends.count {
            if giftRelation[j][k] > giftRelation[k][j] {
                answer[j] += 1
            }
            else if giftRelation[k][j] > giftRelation[j][k] {
                answer[k] += 1
            }
            else if giftRelation[j][k] == giftRelation[k][j] && giftRelation[j][k] == 0 {
                if giftScore[j] > giftScore[k] {
                    answer[j] += 1
                }
                else if giftScore[k] > giftScore[j] {
                    answer[k] += 1
                }
            }
            else if giftRelation[j][k] == giftRelation[k][j] {
                if giftScore[j] > giftScore[k] {
                    answer[j] += 1
                }
                else if giftScore[k] > giftScore[j] {
                    answer[k] += 1
                }
            }
        }
    }

    return answer.max()!
}
