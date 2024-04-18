import SwiftUI

struct animationview: View {
    @State private var scale = 1.0
    @State var shouldBounce: Bool = false
    
    var body: some View {
        Button("Press here") {
            
                shouldBounce.toggle()
                if shouldBounce {
                    scale *= 2
                } else {
                    scale /= 2
                }
                
                
            

            
        }
        .scaleEffect(scale)
        .animation(.spring(duration: 1, bounce: 0.9), value: scale)
    }
}

#Preview {
    animationview()
}
