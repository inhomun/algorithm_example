//
//  main.swift
//  algorithm_elevator
//
//  Created by 문인호 on 2023/01/03.
//
import Foundation

func solution(_ storey: Int) -> Int {
    var mutableStorey = storey
    var magicStone = 0
    
    while mutableStorey > 0 {
        var cmpNum = mutableStorey % 10
        if (cmpNum) < 5 {
            magicStone += cmpNum
            mutableStorey -= cmpNum
        } else if cmpNum == 5 {
            if (mutableStorey % 100) >= 60 {
                magicStone += 10 - cmpNum
                mutableStorey += cmpNum
            }
            else if (mutableStorey % 100) <= 50 {
                magicStone += cmpNum
                mutableStorey -= cmpNum
            }
            else {
                magicStone += 10 - cmpNum
                mutableStorey += cmpNum
            }
        }
        else if cmpNum >= 6{
            magicStone += 10 - cmpNum
            mutableStorey += cmpNum
        }
        mutableStorey /= 10
    }
    return magicStone
}
