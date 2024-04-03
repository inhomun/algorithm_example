//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ s:String) -> [Int] {
    var tmp = s
    var zerocnt = 0
    var cnt = 0
    repeat {
        var a = ""
        for i in tmp {
            if i == "0" {
                zerocnt += 1
            }
            else {
                a += String(i)
            }
        }
        tmp = String(a.count, radix:2)
        cnt += 1
    } while tmp != "1"
    return [cnt, zerocnt]
}
