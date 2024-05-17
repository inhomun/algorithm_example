//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    let dir = ["E":[1,0], "W":[-1,0],"N":[0,-1],"S":[0,1]]
    var map = park.map { Array($0) }
    var start = [Int]()
    for (x,i) in map.enumerated() {
        for (y,j) in i.enumerated() {
            if j == "S" {
                start = [x,y]
            }
        }
    }
    for i in routes {
        let arr = i.split(separator: " ")
        let move = dir[String(arr[0])]!
        var tmp = start
        for j in 0..<Int(arr[1])! {
            tmp[0] += move[1]
            tmp[1] += move[0]
            if tmp[1] < 0 || tmp[0] < 0 || tmp[1] >= map[0].count || tmp[0] >= map.count {
                break
            }
            if map[tmp[0]][tmp[1]] == "X" {
                break
            }
            if j == Int(arr[1])!-1  {
                start = tmp
            }
        }
    }
    return start
}
