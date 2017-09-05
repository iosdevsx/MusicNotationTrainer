//
//  StaveExtensions.swift
//  MusicNotationTrainer
//
//  Created by Юрий Логинов on 05.09.17.
//  Copyright © 2017 Юрий Логинов. All rights reserved.
//

import Foundation
import UIKit

extension Stave {
    
    func lineView(line: Line) -> UIView {
        
        var lineView: UIView
        
        var lowerLinesCount = 0
        var upperLinesCount = 0
        
        switch line {
        case .upperFirst:
            upperLinesCount = 1
            lineView = upperLines[0]
            break
        case .upperSecond:
            upperLinesCount = 2
            lineView = upperLines[1]
            break
        case .upperThird:
            upperLinesCount = 3
            lineView = upperLines[2]
            break
        case .upperFourth:
            upperLinesCount = 4
            lineView = upperLines[3]
            break
        case .upperFifth:
            upperLinesCount = 5
            lineView = upperLines[4]
            break
            
        case .centerFirst: lineView = lines[0]; break
        case .centerSecond: lineView = lines[1]; break
        case .centerThird: lineView = lines[2]; break
        case .centerFourth: lineView = lines[3]; break
        case .centerFifth: lineView = lines[4]; break

        case .lowerFirst:
            lowerLinesCount = 0
            lineView = lowerLines[0]
            break
        case .lowerSecond:
            lowerLinesCount = 1
            lineView = lowerLines[1]
            break
        case .lowerThird:
            lowerLinesCount = 2
            lineView = lowerLines[2]
            break
        case .lowerFourth:
            lowerLinesCount = 3
            lineView = lowerLines[3]
            break
        case .lowerFifth:
            lowerLinesCount = 4
            lineView = lowerLines[4]
            break
        }
        
        for i in 0..<lowerLinesCount {
            lowerLines[i].isHidden = false
        }
        
        for i in 0..<upperLinesCount {
            upperLines[i].isHidden = false
        }
        
        return lineView
    }
    
    func hideAdditionalLines() {
        for line in upperLines {
            line.isHidden = true
        }
        
        for line in lowerLines {
            line.isHidden = true
        }
    }
}
