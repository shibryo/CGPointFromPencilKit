import SwiftUI

struct MyButtonStyle: ButtonStyle {

  func makeBody(configuration: Self.Configuration) -> some View {
    
    configuration.label
        .font(.system(size: 17))
        .padding()
        .background(configuration.isPressed ? Color.blue.opacity(0.5) : Color.blue)
        .foregroundColor(configuration.isPressed ? Color.white.opacity(0.5) : Color.white)
        .cornerRadius(16.0)
  }
}
