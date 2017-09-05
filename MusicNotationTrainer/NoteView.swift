//
//  NoteView.swift
//  MusicNotationTrainer
//
//  Created by Юрий Логинов on 03.09.17.
//  Copyright © 2017 Юрий Логинов. All rights reserved.
//

import UIKit
import SnapKit

class NoteView: UIView {
    
    @IBOutlet var view: UIView!
    @IBOutlet var lines: [UIView]!
    
    @IBOutlet var upperLines: [UIView]!
    @IBOutlet var lowerLines: [UIView]!
    
    private var noteView: UIImageView?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        view = Bundle.main.loadNibNamed("NoteView", owner: self, options: nil)?[0] as! UIView
        self.addSubview(view)
        view.frame = self.bounds
        
        noteView = UIImageView.init(image: UIImage.init(named: "note"))
    }
    
    func setup(note: Notes) {
        
        hideAdditionalLines()

        var isInCenter = false
        var lineView = UIView()
        
        var upperLinesCount = 0
        var lowerLinesCount = 0
        
        switch note {
        case .SmallC:
            lowerLinesCount = 4
            lineView = lowerLines[4]
            break
        case .SmallD:
            lowerLinesCount = 4
            lineView = lowerLines[3]
            isInCenter = true
            break
        case .SmallE:
            lowerLinesCount = 3
            lineView = lowerLines[3]
            break
        case .SmallF:
            lowerLinesCount = 3
            lineView = lowerLines[2]
            isInCenter = true
            break
        case .SmallG:
            lowerLinesCount = 2
            lineView = lowerLines[2]
            break
        case .SmallA:
            lowerLinesCount = 2
            lineView = lowerLines[1]
            isInCenter = true
            break
        case .SmallH:
            lowerLinesCount = 1
            lineView = lowerLines[1]
            break
        case .FirstC:
            lowerLinesCount = 1
            lineView = lowerLines[0]
            isInCenter = true
            break
        case .FirstD:
            lineView = lowerLines[0]
            break
        case .FirstE:
            lineView = lines[4]
            isInCenter = true
            break
        case .FirstF:
            lineView = lines[4]
            break
        case .FirstG:
            lineView = lines[3]
            isInCenter = true
            break
        case .FirstA:
            lineView = lines[3]
            break
        case .FirstH:
            lineView = lines[2]
            isInCenter = true
            break
        case .SecondC:
            lineView = lines[2]
            break
        case .SecondD:
            lineView = lines[1]
            isInCenter = true
            break
        case .SecondE:
            lineView = lines[1]
            break
        case .SecondF:
            lineView = lines[0]
            isInCenter = true
            break
        case .SecondG:
            lineView = lines[0]
            break
        case .SecondA:
            upperLinesCount = 1
            lineView = upperLines[0]
            isInCenter = true
            break
        case .SecondH:
            upperLinesCount = 1
            lineView = upperLines[0]
            break
        }
        
        for i in 0..<lowerLinesCount {
            lowerLines[i].isHidden = false
        }
        
        for i in 0..<upperLinesCount {
            upperLines[i].isHidden = false
        }
        
        createNote(lineView: lineView, inCenter: isInCenter)
    }
    
    func createNote(lineView: UIView, inCenter: Bool) {
        if let v = noteView {
            v.removeFromSuperview()
            self.view.addSubview(v)
            v.snp.makeConstraints({ make in
                make.centerX.equalTo(lineView)
                if inCenter {
                    make.centerY.equalTo(lineView.snp.centerY)
                } else {
                    make.bottom.equalTo(lineView.snp.top)
                }
            })
        }
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
