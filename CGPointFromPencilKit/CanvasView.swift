//
//  CanvasView.swift
//  TreeeLinesOfCode
//
//  Created by shibryo on 2021/11/22.
//

import SwiftUI
import PencilKit


struct CanvasView: UIViewRepresentable {
    @Binding var canvasView: PKCanvasView

    func makeUIView(context: Context) -> PKCanvasView {
        self.canvasView.tool = PKInkingTool(.pen, color: .black, width: 5)
        return canvasView
    }

    func updateUIView(_ uiView: PKCanvasView, context: Context) {
    }
}
