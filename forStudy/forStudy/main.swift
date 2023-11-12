//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ keymap: [String], _ targets: [String]) -> [Int] {
    var keys: [Character: (Int, Int)] = [:]
    for (i, key) in keymap.enumerated() {
        for (j, char) in key.enumerated() {
            if let existingValue = keys[char], existingValue.1 <= j+1 {
                continue
            }
            keys[char] = (i+1, j+1)
        }
    }

    var result: [Int] = []
    for target in targets {
        var count = 0
        for char in target {
            guard let key = keys[char] else {
                count = -1
                break
            }
            count += key.1
        }
        result.append(count)
    }
    return result
}
