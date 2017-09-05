//
//  NotesExtension.swift
//  MusicNotationTrainer
//
//  Created by Юрий Логинов on 05.09.17.
//  Copyright © 2017 Юрий Логинов. All rights reserved.
//

import Foundation

extension Note {
    
    typealias NotePosition = (line: Line, isCenter: Bool)
    
    func position(note: MusicalNote, octave: Octave) -> NotePosition {
        switch octave {
        case .Small:
            switch note {
            case .Do: return (Line.lowerFifth, false)
            case .Re: return (Line.lowerFifth, true)
            case .Mi: return (Line.lowerFourth, false)
            case .Fa: return (Line.lowerFourth, true)
            case .Sol: return (Line.lowerThird, false)
            case .La: return (Line.lowerThird, true)
            case .Si: return (Line.lowerSecond, false)
            }
        case .First:
            switch note {
            case .Do: return (Line.lowerSecond, true)
            case .Re: return (Line.lowerFirst, false)
            case .Mi: return (Line.centerFifth, true)
            case .Fa: return (Line.centerFifth, false)
            case .Sol: return (Line.centerFourth, true)
            case .La: return (Line.centerFourth, false)
            case .Si: return (Line.centerThird, true)
            }
        case .Second:
            switch note {
            case .Do: return (Line.centerThird, false)
            case .Re: return (Line.centerSecond, true)
            case .Mi: return (Line.centerSecond, false)
            case .Fa: return (Line.centerFirst, true)
            case .Sol: return (Line.centerFirst, false)
            case .La: return (Line.upperFirst, true)
            case .Si: return (Line.upperFirst, false)
            }
        }
    }
}
