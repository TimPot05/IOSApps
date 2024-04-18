import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            VStack{
                
                HStack{
                    
                    Text("Profile")
                        .offset(x: 230)
                        .bold()
                    
                    Image(systemName: "line.3.horizontal")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                        .bold()
                        .font(.title2)
                    Spacer()
                    Spacer()
                    
                    
                    
                }
                HStack{
                    
                    Image("Family pic")
                        .resizable()
                        .frame(width: 100, height: 100, alignment: .leading)
                        .clipShape(Circle())
                        .offset(x:-120)
                    
                    Text("3")
                        .offset(x: -50)
                    Text("55")
                        .offset(x: 15)
                    Text("58")
                        .offset(x: 90)
                    
                }
                HStack{
                    
                    Text("Posts")
                    Text("Followers")
                        .offset(x:30)
                    Text("Following")
                        .offset(x:50)
                    
                }.offset(x: 50, y: -30)
                HStack{
                    Text("Tim Potter")
                        .bold()
                        .font(.title3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x:10)
                    
                    
                }
                
                HStack{
                    Text("Senior at HHS, Twin")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .offset(x:10)
                }
                
                
                
                HStack{
                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                        .frame(width: 250, height: 40)
                        .foregroundColor(.white)
                        .border(Color.black)
                        .overlay { 
                            Text("Edit Profile")
                                .bold()
                        }
                    RoundedRectangle(cornerSize: CGSize(width: 20, height: 10))
                        .frame(width: 250, height: 40)
                        .foregroundColor(.white)
                        .border(Color.black)
                        .overlay { 
                            Text("Share Profile")
                                .bold()
                        }
                }
                HStack{
                    Image("Dog pic")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Image("76ers pic")
                        .resizable()
                        .frame(width: 150, height: 150)
                    Image("Penn state pic")
                        .resizable()
                        .frame(width: 150, height: 150)
                }
                HStack{}
                Image("Family pic")
                    .resizable()
                    .frame(width: 150, height: 150)
                    .offset(x:-159, y: 10)
                    
            }
                }
            }
            
        
    }

