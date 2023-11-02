//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ cards1:[String], _ cards2:[String], _ goal:[String]) -> String {
    var valA = 0
    var valB = 0
    
    for i in goal {
        if valA < cards1.count && i == cards1[valA] {
            valA += 1
        }
        else if valB < cards2.count && i == cards2[valB] {
            valB += 1
        }
        else {
            return "No"
        }
    }
    return "Yes"
}
