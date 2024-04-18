import SwiftUI
struct BoxView: View{
    
    let lettter: String
    let color: Color
    
    var body: some View{
        ZStack{
            Circle()
                .foregroundColor(.blue)
            Text(lettter)
                .font(.largeTitle)
                .foregroundColor(color)
            
        }
        .frame(width: 80, height: 85)
        }
    }
