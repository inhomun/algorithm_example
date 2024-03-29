//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ lottos:[Int], _ win_nums:[Int]) -> [Int] {
    var zerocnt = lottos.filter { $0 == 0 }.count
    var cnt = win_nums.filter { lottos.contains($0) }.count
    func returnVal(_ cnt: Int) -> Int {
    switch cnt {
    case 6:
        return 1
    case 5:
        return 2
    case 4:
        return 3
    case 3:
        return 4
    case 2:
        return 5
    case 1, 0:
        return 6
    default:
        return 0
    }
    }
    return [returnVal(cnt+zerocnt), returnVal(cnt)]
}
