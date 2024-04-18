import SwiftUI

struct ContentView: View {
    
    @State var BBallClicked: Bool = false
    @State var GameScore = 0
    @State var clickpower1 = 1
    @State private var scale = 1.0
    @State var shouldBounce: Bool = false
    @State var upgradeprice1: Int = 25
    @State var upgradeprice2: Int = 200
    @State var PassiveUPG1: Int = 400
    @State var BBalCPS = 0
    @State var PassiveUPG2: Int = 1000
    
    
    var body: some View {
        ZStack{
            Image("BasketballCourt")
                .resizable()
                .frame(maxWidth: 500, maxHeight: 300)
                .offset(y: -25)
            VStack {
               
                Image("MarchMadnessLogo2")
                    .resizable()
                    .offset(y: -80)
                    .frame(width: 500, height: 200)
                
                Text("March Madness Clicker")
                    .offset(y: -75)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                
                Button(action: {
                    GameScore += clickpower1
                    shouldBounce.toggle()
                    if shouldBounce {
                        scale *= 1.1
                    } else {
                        scale /= 1.1
                    }
                }, label: {
                    Image("BGBasketball")
                    
                })
                .offset(y: -45)
                .scaleEffect(scale)
                .animation(.spring(duration: 0.5, bounce: 0.9), value: scale)
                
                Text("\(GameScore)")
                    .font(.largeTitle)
                    .foregroundStyle(Color .white)
                    .offset(y: 12)
                Button(action: {
                    GameScore = 0
                    BBalCPS = 0
                    upgradeprice1 = 25
                    clickpower1 = 1
                    upgradeprice2 = 200
                    PassiveUPG1 = 400
                    PassiveUPG2 = 1000
                    
                }, label: {
                    Text("Reset Score")
                        .frame(width: 150, height: 50, alignment: .center)
                        .background(Color .black)
                        .clipShape(Capsule())
                })
                .foregroundColor(.white)
                HStack{
                    Button(action: {
                        if GameScore >= upgradeprice1 {
                            clickpower1 += 1
                            GameScore -= upgradeprice1
                            upgradeprice1 = Int(Double(upgradeprice1)*1.5)
                        }
                    }, label: {
                        Text("Manual dribble upgrade 1: \(Int(upgradeprice1)) ")
                    })
                    .foregroundColor(.white)
                    .frame(width: 150, height: 50)
                    .background(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))

                    Button(action: {
                        if GameScore >= upgradeprice2 {
                            clickpower1 += 5
                            GameScore -= upgradeprice2
                            upgradeprice2 = Int(Double(upgradeprice2)*2)
                        }
                    }, label: {
                        Text("Manual dribble upgrade 2: \(Int(upgradeprice2)) ")
                    })
                    .foregroundColor(.white)
                    .frame(width: 150, height: 50)
                    .background(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))

                }
                
                HStack{
                    
                    Button(action: {
                        if GameScore >= PassiveUPG1 {
                            BBalCPS += 1
                            GameScore -= PassiveUPG1
                            PassiveUPG1 = 
                            Int(Double(PassiveUPG1)*3)
                        }
                    }, label: {
                        Text("Auto dribble Upgrade 1: \(Int(PassiveUPG1))")
                    })
                    .foregroundColor(.white)
                    .frame(width: 150, height: 50)
                    .background(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
                    
                    Button(action: {
                        if GameScore >= PassiveUPG2 {
                            BBalCPS += 5
                            GameScore -= PassiveUPG2
                            PassiveUPG2 = 
                            Int(Double(PassiveUPG2)*3)
                        }
                    }, label: {
                        Text("Auto dribble Upgrade 2: \(Int(PassiveUPG2))")
                    })
                    .foregroundColor(.white)
                    .frame(width: 150, height: 50)
                    .background(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))
                    
                }
                
            }
        }
        .onAppear(perform: {
            Timer
                .scheduledTimer(withTimeInterval: 1.0, repeats: true) {time in
                    GameScore += BBalCPS
                }
        })
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color .blue)
    }
}

