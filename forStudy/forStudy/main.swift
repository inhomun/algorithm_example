//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ s:String) -> String {
    return String(Array(s).sorted{ $0 > $1 })
}
