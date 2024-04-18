import SwiftUI

struct ContentView: View {
    
    @State var Q1Grade: Double? 
    @State var Q2Grade: Double? 
    @State var DesiredGrade: Double?
    @State var ExamScore: Double?
    
    
    var body: some View {
        ZStack{
            VStack {
                Text("Final Grade Calculator")
                    .font(.largeTitle)
                Text("Enter Quarter 1 grade:")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title3)
                TextField("Enter Q1 Grade", value: $Q1Grade, format: .number)
                    .border(Color.black)
                    .frame(width: 400)
                Text("Enter Quarter 2 grade:")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title3)
                TextField("Enter Q2 Grade", value: $Q2Grade, format: .number)
                    .border(Color.black)
                    .frame(width: 400)
                Text("Enter Desired Final Grade:")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.title3)
                TextField("Enter Desired Final Grade", value: $DesiredGrade, format: .number)
                    .border(Color.black)
                    .frame(width: 400)
                Text("You need a \(ExamScore ?? 0) on your final exam to reach your desired final grade")
                    .font(.title3)
                    .foregroundColor(.white)
//                Text("Exam Score Needed:")
//                    .font(.title)
//                    .foregroundColor(.white)
//                    .frame(maxWidth: .infinity, alignment: .center)
//                
//                Text("\(ExamScore ?? 0)")
//                    .foregroundColor(.white)
                
                Button("Calculate Exam Number") { 
                    let num = ((Q1Grade ?? 0) * 0.4) + ((Q2Grade ?? 0) * 0.4)
                    ExamScore = (((DesiredGrade ?? 0)-num) * 5)
                    
                }
                .foregroundColor(.white)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(ExamScore ?? 0 > 100 ? .red : .green)
        if ExamScore ?? 0 > 100 {
            Text("Ask teacher for extra credit")
        }
    }
}
