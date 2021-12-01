//
//  PKStroke2CGPoint.swift
//  TreeeLinesOfCode
//
//  Created by shibryo on 2021/11/30.
//

import Foundation
import PencilKit

func PKStroke2CGPoint (strokes: [PKStroke])->[[CGPoint]]{
    var cgpoints: [CGPoint] = []
    var cgpointList: [[CGPoint]] = []
    cgpoints = []
    //                self.canvasView.drawing.strokes = self.strokes
    for stroke in strokes {
        for strokePoint in stroke.path {
            cgpoints.append(strokePoint.location)
        }
        cgpointList.append(cgpoints)
        cgpoints = []
    }
    return cgpointList
}
