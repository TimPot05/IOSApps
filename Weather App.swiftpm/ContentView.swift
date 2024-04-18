import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack{
            Image("Sky background")
                .resizable()
            
            
            
            
            VStack {
                Text("Philadelphia")
                    .foregroundStyle(Color .white)
                    .font(.title3)
                Text("45°")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Text("Sunny")
                    .foregroundColor(.white)
                //                   
                HStack{
                    Text("H:68°")
                        .foregroundColor(.white)
                    Text("L:45°")
                        .foregroundColor(.white)
                        
                }
                
                ScrollView(.horizontal){                
                    HStack(spacing:40) {
                        
                        Hourview(time: "Now", color: .yellow, imagename: "sun.max.fill", temp: "45")
                        Hourview(time: "9AM", color: .white, imagename:  "cloud.sun.fill", temp: "47")
                        Hourview(time: "10AM", color: .white, imagename: "cloud.fill", temp: "49")
                        Hourview(time: "11AM", color: .white, imagename: "cloud.fill", temp: "50")
                        Hourview(time: "12PM", color: .white, imagename: "cloud.fill", temp: "55")
                        Hourview(time: "1PM", color: .white, imagename: "cloud.sun.fill", temp: "45")
                        Hourview(time: "2PM", color: .white, imagename:  "cloud.sun.fill", temp: "47")
                        Hourview(time: "3PM", color: .yellow, imagename: "sun.max.fill", temp: "49")
                        Hourview(time: "4PM", color: .yellow, imagename: "sun.max.fill", temp: "50")
                        Hourview(time: "5PM", color: .yellow, imagename: "sun.max.fill", temp: "55")
                    }
                    .frame(width:900, height: 100)
//                    .border(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
                    
                    
                    
                }
            }
        }
    
       
    }
}
