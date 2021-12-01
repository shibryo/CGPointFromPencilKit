//
//  ContentView.swift
//  TreeeLinesOfCode
//
//  Created by shibryo on 2021/11/22.
//


import SwiftUI
import PencilKit //追加

struct ContentView: View {
    @State private var canvasView: PKCanvasView = PKCanvasView()
    @State private var strokes: [PKStroke] = []
    @State private var cgpointList: [[CGPoint]] = []
    
    var body: some View {

        VStack{
            Text("test write")
                .font(.title)
            Spacer()
            HStack {
                Spacer()
                Button(action: {
                    self.canvasView.drawing = PKDrawing()
                })
                {
                    Text("erase")
                            
                }
                .onTapGesture {
                }
                .buttonStyle(MyButtonStyle())
                
                Spacer()
                
                Button(action: {
                    self.cgpointList = PKStroke2CGPoint(strokes: self.canvasView.drawing.strokes)
                })
                {
                    Text("copy")
                }.onTapGesture {
                }
                .buttonStyle(MyButtonStyle())
                
                Spacer()
                
                Button(action: {
                    strokes = CGPint2PKStroke(canvasView: self.canvasView, pointArrays: self.cgpointList )
                    canvasView.drawing = PKDrawing(strokes: strokes)
                })
                {
                    Text("paste")
                }
                .buttonStyle(MyButtonStyle())

                Spacer()
        }
            CanvasView(canvasView: self.$canvasView)
        }
    }
}
