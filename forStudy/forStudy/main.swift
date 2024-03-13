//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let check = arr.filter { ($0)%divisor == 0 }
return check.count == 0 ? [-1] : check.sorted()
}
