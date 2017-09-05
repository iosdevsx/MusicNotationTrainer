//
//  Enums.swift
//  MusicNotationTrainer
//
//  Created by Юрий Логинов on 03.09.17.
//  Copyright © 2017 Юрий Логинов. All rights reserved.
//

import Foundation
import UIKit

enum MusicalNote: UInt32 {
    case Do, Re, Mi, Fa, Sol, La, Si
    
    static func randomNote() -> MusicalNote {
        let all = [Do, Re, Mi, Fa, Sol, La, Si]
        return MusicalNote.init(rawValue: arc4random_uniform(UInt32(all.count)))!
    }
}

enum Octave: UInt32 {
    case Small, First, Second
    
    static func randomOctave() -> Octave {
        let all = [Small, First, Second]
        return Octave.init(rawValue: arc4random_uniform(UInt32(all.count)))!
    }
}

/*
 Upper lines: 54321
 Center lines: 12345
 Lower lines: 12345
 */

enum Line {
    case upperFirst, upperSecond, upperThird, upperFourth, upperFifth,
    centerFirst, centerSecond, centerThird, centerFourth, centerFifth,
    lowerFirst, lowerSecond, lowerThird, lowerFourth, lowerFifth
}
