//
//  Note.swift
//  MusicNotationTrainer
//
//  Created by Юрий Логинов on 05.09.17.
//  Copyright © 2017 Юрий Логинов. All rights reserved.
//

import Foundation
import UIKit

class Note: UIImageView {
    
    public var symbol: MusicalNote
    public var octave: Octave
    
    private var lowerLinesCount : Int = 0
    private var upperLinesCount : Int = 0
    
    init(symbol: MusicalNote, octave: Octave) {
        self.symbol = symbol
        self.octave = octave
        
        super.init(frame: CGRect.zero)
        
        loadImage()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadImage() {
        self.image = UIImage.init(named: "note")
    }
}
