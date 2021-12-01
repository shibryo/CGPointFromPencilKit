//
//  GenLine.swift
//  TreeeLinesOfCode
//
//  Created by shibryo on 2021/11/30.
//

import SwiftUI
import PencilKit

func CGPint2PKStroke(canvasView: PKCanvasView, pointArrays: [[CGPoint]])->[PKStroke] {
    let ink = PKInk(.pen, color: .blue)
    var strokes: [PKStroke] = []
    for points in pointArrays where points.count > 1 {
        let strokePoints = points.enumerated().map { index, point in
            PKStrokePoint(location: point, timeOffset: 0.1 * TimeInterval(index), size: CGSize(width: 3, height: 3), opacity: 2, force: 1, azimuth: 0, altitude: 0)
        }

        var startStrokePoint = strokePoints.first!

        for strokePoint in strokePoints {
            let path = PKStrokePath(controlPoints: [startStrokePoint, strokePoint], creationDate: Date())
            strokes.append(PKStroke(ink: ink, path: path))
            startStrokePoint = strokePoint
        }
    }
    return strokes
}
