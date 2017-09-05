//
//  Enums.swift
//  MusicNotationTrainer
//
//  Created by Юрий Логинов on 03.09.17.
//  Copyright © 2017 Юрий Логинов. All rights reserved.
//

import Foundation
import UIKit

enum Notes: UInt32 {
    case SmallC, SmallD, SmallE, SmallF, SmallG, SmallA, SmallH,
    FirstC, FirstD, FirstE, FirstF, FirstG, FirstA, FirstH,
    SecondC, SecondD, SecondE, SecondF, SecondG, SecondA, SecondH
    
    static func randomNote() -> Notes {
        let all = [SmallC, SmallD, SmallE, SmallF, SmallG, SmallA, SmallH,
                   FirstC, FirstD, FirstE, FirstF, FirstG, FirstA, FirstH,
                   SecondC, SecondD, SecondE, SecondF, SecondG, SecondA, SecondH]
        return Notes.init(rawValue: arc4random_uniform(UInt32(all.count)))!
    }
}
