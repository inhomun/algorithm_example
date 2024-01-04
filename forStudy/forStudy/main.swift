//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    var a = myString.lowercased()
    var b = pat.lowercased()
    if a.contains(b) {
        return 1
    }
    else {
    return 0
    }
}
