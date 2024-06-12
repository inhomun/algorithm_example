//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
import Foundation

func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
    var answer = [Int]()
    var arr1 = [Int]()
    var map1 = [[Int]]()
    var map2 = [[Int]]()
    var val = 0
    for i in 0..<rows {
        var tmp = [Int]()
        for j in 0..<columns {
            val += 1
            tmp.append(val)
        }
        map1.append(tmp)
        map2.append(tmp)
    }
    func rotate(_ arr: [Int],_ x: Int,_ y: Int,_ val: Int) {
        if map2[x][y] == val {
            answer.append(arr1.min()!)
            arr1 = []
            map1 = map2
            return
        }
        arr1.append(val)
        map2[x][y] = val
        
        if x == arr[0]-1 {
            if y == arr[3]-1 {
                rotate(arr, x+1, y, map1[x][y])
            }
            else {
                rotate(arr, x, y+1, map1[x][y])
            }
        }
        else if y == arr[3]-1 {
            if x == arr[2]-1 {
                rotate(arr, x, y-1, map1[x][y])
            }
            else {
                rotate(arr, x+1, y, map1[x][y])
            }
        }
        else if x == arr[2]-1 {
            if y == arr[1]-1 {
                rotate(arr, x-1, y, map1[x][y])
            }
            else {
                rotate(arr, x, y-1, map1[x][y])
            }
        }
        else if y == arr[1]-1 {
            rotate(arr, x-1, y, map1[x][y])
        }
        return
    }
    for query in queries {
        rotate(query, query[0]-1, query[1]-1, map1[query[0]][query[1]-1])
    }
    return answer
}
