//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ s:String) -> Int {
    var firstChar : Character?
    var result = 0
    var cnt = 0
    var notcnt = 0
    for i in s {
        if firstChar == nil {
            firstChar = i
        }
        
        if i == firstChar {
            cnt += 1
        } else {
            notcnt += 1
        }
        
        if cnt == notcnt {
            result += 1
            cnt = 0
            notcnt = 0
            firstChar = nil
        }
    }
        if cnt != 0 || notcnt != 0 {
            result += 1
        }
    return result
}
