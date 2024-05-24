//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ board:[[Int]]) -> Int
{
    if board.count == 1 || board[0].count == 1 {
        for i in board {
            if i.contains(1) {
                return 1
            }
        }
        return 0
    }
    var tmp = board
    for i in 1..<tmp.count {
        for j in 1..<tmp[0].count {
            if tmp[i][j] == 1 {
                tmp[i][j] += min(tmp[i-1][j],tmp[i][j-1],tmp[i-1][j-1])
            }
        }
    }
    var answer = 0
    for i in tmp {
        answer = max(i.max()!, answer)
    }
    
    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")

    return answer*answer
}
