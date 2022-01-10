//
//  ContentView.swift
//  Shared
//
//  Created by Dhivyabharathi Rathinakumar on 03/01/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var userName: String = "Johndoe@gmail.com"
    @State var password: String = "123456789"
    @State var isButtonClicked: Bool = false
    
    fileprivate func circle(width: CGFloat, height: CGFloat, xOffSet:CGFloat, yOffSet: CGFloat, color: Color, alignment: Alignment) -> some View {
        return Circle()
            .fill(color)
            .frame(width: width, height: height, alignment: alignment)
            .offset(x: xOffSet, y: yOffSet)
    }
    
    var body: some View {
        
        NavigationView {
            ZStack(alignment: .topLeading) {
                Color.backgroundBlue
                    .ignoresSafeArea()
                    .preferredColorScheme(.light)
                Group {
                    circle(width: 300, height: 300, xOffSet: -120, yOffSet: -110, color: .maize, alignment: .leading)
                    circle(width: 100, height: 100, xOffSet: 130, yOffSet: 80, color: .turquoiseBlue, alignment: .trailing)
                    clippedView(width: 120, height: 120, xOffSet: 50, yOffSet: 50, colour: Color.white)
                        .offset(x: 210, y: 155)
                    clippedView(width: 120, height: 120, xOffSet: -50, yOffSet: 50, colour: .maize)
                        .offset(x: 330, y: 155)
                    Capsule()
                        .fill(Color.cetaceanBlue)
                        .frame(width: 120, height: 300, alignment: .top)
                        .offset(x: 125, y: -200)
                    circle(width: 180, height: 200, xOffSet: 245, yOffSet: -100, color: .salmonPink, alignment: .trailing)
                    circle(width: 130, height: 130, xOffSet: -40, yOffSet: 170, color: .darkOrange, alignment: .trailing)
                    circle(width: 75, height: 75, xOffSet: 80, yOffSet: 200, color: .cetaceanBlue, alignment: .trailing)
                    circle(width: 120, height: 120, xOffSet: 125, yOffSet: 0, color: .darkOrange, alignment: .top)
                    circle(width: 145, height: 145, xOffSet: 250, yOffSet: 60, color: .turquoiseBlue, alignment: .top)
                }
                .frame(width: deviceWidth, alignment: .topLeading)
                VStack() {
                    Spacer()
                    VStack(spacing: 0) {
                        Text("Welcome")
                            .font(.pacifico(size: 45))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .frame(height: 30)
                            .padding(.bottom,0)
                        Text("Back")
                            .padding(.top,0)
                            .font(.pacifico(size: 45))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding(EdgeInsets(top: 15, leading: 10, bottom: 10, trailing: 10))
                    TextField("User Name", text: $userName)
                        .padding()
                        .frame(width: deviceWidth - 50, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .font(.oswald(size: 18))
                        .background(Color.textFieldColor)
                        .cornerRadius(30)
                        .padding()
                    SecureField("Password", text: $password)
                        .padding()
                        .frame(width: deviceWidth - 50, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .background(Color.textFieldColor)
                        .cornerRadius(30)
                    Button("Forgot Password?") {
                        print("button pressed")
                    }
                    .frame(width: deviceWidth - 40, height: 40, alignment: .trailing)
                    .font(.oswald)
                    .foregroundColor(.white)
                    Button("Login") {
                        print("Login button pressed")
                    }
                    .frame(width: 140, height: 55, alignment: .center)
                    .foregroundColor(.white)
                    .font(.lato(size: 22))
                    .background(Color.darkOrange)
                    .cornerRadius(30)
                    HStack {
                        NavigationLink(destination: SignUpPage(), isActive: $isButtonClicked) {
                        }
                        Text("New User?")
                        Button("Signup", action: {
                            isButtonClicked = true
                        })
                            .foregroundColor(.darkOrange)
                            .font(.oswald(size: 22))
                    }
                    .frame(width: UIScreen.main.bounds.width, height: 40, alignment: .bottom)
                    .font(.oswald)
                    .foregroundColor(.white)
                    
                }
            }.navigationBarHidden(true)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
    
}
