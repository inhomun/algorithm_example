//
//  main.swift
//  forStudy
//
//  Created by 문인호 on 2023/01/27.
//
func solution(_ m:String, _ musicinfos:[String]) -> String {
    var tuple = [(name: String, time: Int)]()
    var melody = m.replacingOccurrences(of: "C#", with: "c")
        .replacingOccurrences(of: "D#", with: "d")
        .replacingOccurrences(of: "F#", with: "f")
        .replacingOccurrences(of: "G#", with: "g")
        .replacingOccurrences(of: "A#", with: "a")
        .replacingOccurrences(of: "B#", with: "b")
    for music in musicinfos {
        var info = music.components(separatedBy: ",")
        let melodies = info[3].replacingOccurrences(of: "C#", with: "c")
        .replacingOccurrences(of: "D#", with: "d")
        .replacingOccurrences(of: "F#", with: "f")
        .replacingOccurrences(of: "G#", with: "g")
        .replacingOccurrences(of: "A#", with: "a")
        .replacingOccurrences(of: "B#", with: "b")
        .map { String($0) }
        var start = info[0].components(separatedBy: ":")
        var end = info[1].components(separatedBy: ":")
        let time1 = Int(start[0])! * 60 + Int(start[1])!
        let time2 = Int(end[0])! * 60 + Int(end[1])!
        let playtime = time2 - time1
        var tmp = ""
        for i in 0..<playtime {
            let index = i % melodies.count
            tmp += melodies[index]
        }
        if tmp.contains(melody) {
            tuple.append((name: info[2], time: playtime))
        }
    }
    return tuple.max{$0.time < $1.time}?.name ?? "(None)"
}
