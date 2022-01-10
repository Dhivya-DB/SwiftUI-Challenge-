//
//  SignUpPage.swift
//  recreationChallenge
//
//  Created by Dhivyabharathi Rathinakumar on 10/01/22.
//

import SwiftUI

struct SignUpPage: View {
    
    @State var firstName: String = "John"
    @State var lastName = "Doe"
    @State var email = "Johndoe@gmail.com"
    @State var phoneNum = "987765234567"
    @State var countryCode = "+91"
    @State var country = "Select Center"
    @Environment(\.dismiss) private var dismiss
    
    
    var body: some View {
        ZStack(alignment: .top) {
            Color.backgroundBlue
                .ignoresSafeArea()
            Spacer()
                .frame(width: 0, height: 20)
            VStack(spacing: 0) {
                Text("Hello...!")
                    .frame(alignment: .topLeading)
                    .foregroundColor(.white)
                    .font(.pacifico(size: 35))
                    .padding()
                    .offset(x: -110)
                Spacer()
                    .frame(width: 0, height: 20)
                Group {
                    TextField("First Name", text: $firstName)
                        .padding()
                        .frame(width: deviceWidth - 50, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .font(.oswald(size: 18))
                        .background(Color.textFieldColor)
                        .cornerRadius(30)
                    TextField("Last Name", text: $lastName)
                        .padding()
                        .frame(width: deviceWidth - 50, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .font(.oswald(size: 18))
                        .background(Color.textFieldColor)
                        .cornerRadius(30)
                        .padding()
                    TextField("Email", text: $email)
                        .padding()
                        .frame(width: deviceWidth - 50, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .font(.oswald(size: 18))
                        .background(Color.textFieldColor)
                        .cornerRadius(30)
                    ZStack {
                        TextField("", text: $phoneNum).foregroundColor(.white)
                            .padding(.leading, 100)
                            .foregroundColor(.white)
                            .background(Color.textFieldColor)
                            .cornerRadius(55)
                            .font(.oswald(size: 18))
                            .frame(width: deviceWidth-50 ,height: 50, alignment: .center)
                        TextField("code", text: $countryCode)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.countryCodeColor)
                            .cornerRadius(85)
                            .font(.oswald(size: 18))
                            .frame(width: 80, height: 50, alignment: .center)
                            .offset(x: -130)
                    }.background(Color.textFieldColor)
                        .cornerRadius(30)
                        .padding()
                    TextField("Country Name", text: $country)
                        .padding()
                        .frame(width: deviceWidth - 50, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .font(.oswald(size: 18))
                        .background(Color.textFieldColor)
                        .cornerRadius(30)
                        .padding(.bottom, 40)
                }
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                Button("Signup") {
                    
                }
                .padding()
                .frame(width: 150, height: 60, alignment: .center)
                .background(Color.darkOrange)
                .foregroundColor(.white)
                .font(.lato(size: 24))
                .cornerRadius(30)
                Spacer()
                HStack {
                    Text("Already Have Account?")
                        .font(.oswald(size: 18))
                        .foregroundColor(.white)
                    Button("Login") {
                        dismiss()
                    }
                    .foregroundColor(.darkOrange)
                    .font(.oswald(size: 20))
                }
            }
            Spacer()
            Circle()
                .fill(Color.darkOrange)
                .offset(x: -190, y: 700)
                .frame(width: 150, height: 150, alignment: .bottom)
            Circle()
                .fill(Color.maize)
                .offset(x: 200, y: 720)
                .frame(width: 150, height: 150, alignment: .bottom)
        }.navigationBarHidden(true)
    }
}

struct SignUpPage_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPage()
    }
}
