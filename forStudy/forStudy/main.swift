//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var answer : [Int] = []
    var luy : [Int] = []
    for (idx, i) in wallpaper.enumerated() {
        for (idx1, j) in i.enumerated() {
            if j == "#" {
                luy.append(idx)
                answer.append(idx1)
            }
        }
    }
    return [luy.min()!, answer.min()! , luy.max()!+1, answer.max()!+1]
}
