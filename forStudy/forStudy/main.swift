//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ dirs:String) -> Int {
    var x = 0
    var y = 0
    var way = [[Int]]()
    for i in dirs {
        if i == "L" {
            if x > -5 {
                way.append([x, y,x-1,y])
                x -= 1
            }
        }
        else if i == "R" {
            if x < 5 {
                way.append([x+1, y,x,y])
                x += 1
            }
        }
        else if i == "U" {
            if y < 5 {
                way.append([x, y, x, y+1])
                y += 1
            }
        }
        else if i == "D" {
            if y > -5 {
                way.append([x, y-1, x, y])
                y -= 1
            }
        }
    }
    let answer = Set(way)
    return answer.count
}
