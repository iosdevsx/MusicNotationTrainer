//
//  Stave.swift
//  MusicNotationTrainer
//
//  Created by Юрий Логинов on 03.09.17.
//  Copyright © 2017 Юрий Логинов. All rights reserved.
//

import UIKit
import SnapKit

class Stave: UIView {
    
    @IBOutlet var view: UIView!
    
    @IBOutlet var lines: [UIView]!
    @IBOutlet var upperLines: [UIView]!
    @IBOutlet var lowerLines: [UIView]!
    
    @IBOutlet var trebleClef: UIImageView!
    
    var notes: Stack<Note>
    
    let noteOffset: Float = 15
    
    required init?(coder aDecoder: NSCoder) {
        self.notes = Stack()
        super.init(coder: aDecoder)
        
        view = Bundle.main.loadNibNamed("Stave", owner: self, options: nil)?[0] as! UIView
        self.addSubview(view)
        view.frame = self.bounds
    }
    
    public func setup(note: Note) {
        
        hideAdditionalLines()
        
        let position = note.position(note: note.symbol, octave: note.octave)
        let line = lineView(line: position.line)
        
        addSubview(note)
        note.snp.makeConstraints { make in
            make.centerX.equalTo(line)
            if position.isCenter {
                make.centerY.equalTo(line.snp.centerY)
                line.isHidden = false
            } else {
                make.bottom.equalTo(line.snp.top)
            }
        }
        
        notes.push(note)
    }
    
    func clearStave() {
        while !notes.isEmpty {
            let note = notes.pop()
            if let n = note {
                n.removeFromSuperview()
            }
        }
    }
}
