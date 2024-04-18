import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                BoxView(lettter: "1", color: .white)
                BoxView(lettter: "2",color: .white)
                BoxView(lettter: "3", color: .white)
                BoxView(lettter: "4", color: .white)
            }
            HStack{
                    BoxView(lettter: "5", color: .white)
                    BoxView(lettter: "6", color: .white)
                    BoxView(lettter: "7", color: .white)
                    BoxView(lettter: "8", color: .white)
                    
                }
            HStack{
                BoxView(lettter: "9", color: .white)
                BoxView(lettter: "0", color: .white)
                BoxView(lettter: ".", color: .white)
                BoxView(lettter: "=", color: .white)
                
            }
            HStack{
                BoxView(lettter: "+", color: .white)
                BoxView(lettter: "-", color: .white)
                BoxView(lettter: "*", color: .white)
                BoxView(lettter: "/", color: .white)
                
            }
            
        }
    }
}

