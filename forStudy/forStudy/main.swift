//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ s:String) -> String {
    let arr = s.split(separator: " ").compactMap { Int($0)! }
    return "\(arr.min()!) \(arr.max()!)"
}
