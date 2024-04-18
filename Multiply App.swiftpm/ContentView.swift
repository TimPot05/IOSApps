import SwiftUI

struct ContentView: View {
    
    @State var num1 = 0
    @State var num2 = 0

    @State var buttonClicked: Bool = true
    
    
    
    var body: some View {
        
               
        VStack {
            HStack{
                
                TextField("Enter a number", value: $num1, format: .number )
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)
                TextField("Enter a 2nd number", value: $num2, format: .number)
                    .textFieldStyle(.roundedBorder)
                    .keyboardType(.numberPad)
                
                    
            }
            
            Text("\(num1) * \(num2) = \(num1 * num2)")
           
            
            if num1 * num2 == 64{
                Image ("Mario kart competitor")
            }
            if (num1 * num2) % 2 == 0{
                Image ("Funny Picture 1")
            }
            else{
                Image("Funny Picture 2")
            }
            Button(action: {
                buttonClicked.toggle()
            }, label: {
                Image(systemName: "clear.fill")
                    .resizable()
                    .frame(width:50, height: 50)
                    .foregroundColor(.red)
                Text("Clear all")
                    .foregroundStyle(Color.red)
                    
            }
                
            )
        }
    }
        
}
