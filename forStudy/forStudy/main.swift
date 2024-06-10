//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ sticker:[Int]) -> Int{
    if sticker.count == 1 || sticker.count == 2 {
        return sticker.max()!
    }
    var answer = 0
    var arr1 = Array(repeating: 0, count: sticker.count)
    var arr2 = Array(repeating: 0, count: sticker.count)
    arr1[0] = sticker[0]
    arr1[1] = max(sticker[0], sticker[1])
    arr2[0] = 0
    arr2[1] = sticker[1]
    for i in 2..<sticker.count-1 {
        arr1[i] = max(arr1[i-2]+sticker[i], arr1[i-1])
    }
    for i in 2..<sticker.count {
        arr2[i] = max(arr2[i-2]+sticker[i], arr2[i-1])
    }
    // [실행] 버튼을 누르면 출력 값을 볼 수 있습니다.
    print("Hello Swift")
    answer = max(arr1.max()!, arr2.max()!)
    return answer
}
