//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ ineq:String, _ eq:String, _ n:Int, _ m:Int) -> Int {
    if ineq == "<" {
        if eq == "=" {
            if n<=m {
                return 1
            }
            else {
                return 0
            }
        }
        else {
            if n<m {
                return 1
            }
            else {
                return 0
            }
        }
    }
    else {
        if eq == "=" {
            if n>=m {
                return 1
            }
            else {
                return 0
            }
        }
        else {
            if n>m {
                return 1
            }
            else {
                return 0
            }
        }
    }
    return 0
}
