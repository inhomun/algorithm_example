//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ my_string:String, _ queries:[[Int]]) -> String {
    var chars = Array(my_string)
    for i in queries {
    let rev = chars[i[0]...i[1]].reversed()
    chars.replaceSubrange(i[0]...i[1], with: rev)
    }
    return String(chars)
}
