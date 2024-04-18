import SwiftUI

struct Hourview: View{
    
    let time: String
    let color: Color
    let imagename: String
    let temp: String
    var body: some View{
        // Box View with letter
        VStack{
            
            Text(time)
            .foregroundColor(.white)
            Image(systemName: imagename)
                .foregroundColor(color)
            Text("\(temp)°")
                .foregroundColor(.white)
        }
    }
}
