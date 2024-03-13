//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ s:String) -> Bool {
    if s.count == 4 || s.count == 6 {
        if let a = Int(s) {
            return true
        }
        else {
            return false
        }
    }
    else {
    return false
    }
}
