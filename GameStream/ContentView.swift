//
//  ContentView.swift
//  GameStream
//
//  Created by Caleb Gonzalez on 14/12/23.
//

import SwiftUI

struct loginView: View {
    @State var userEmail = ""
    @State var userPassword = ""
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
                
                Text("Email").foregroundStyle(Color("dark-cian"))
                TextField("sample@mail.com", text: $userEmail).foregroundStyle(Color(.white))
                
                Divider().frame( height: 1).background(Color("dark-cian")).padding(.bottom)
                
                Text("Password").foregroundStyle(Color(.white))
                SecureField("******", text: $userPassword).font(.caption).foregroundColor(.gray).foregroundStyle(Color(.white))
                
                Divider().frame( height: 1).background(Color(.white)).padding(.bottom)
                
                Text("Did you forget your password?")
                    .font(.footnote)
                    .frame(width: 300, alignment: .trailing)
                    .foregroundStyle(Color("dark-cian"))
                    .padding(.bottom)
                
                Spacer(minLength: 35)
                
                Button(action: loginSession, label: {
                    Text("Log in")
                        .fontWeight(.bold)
                        .foregroundStyle(Color(.white))
                        .frame( maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                        .padding(EdgeInsets(top: 11, leading: 0, bottom: 11, trailing: 0))
                        .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color("dark-cian")).shadow(color: .white, radius: 6))
                })
                
                Spacer(minLength: 35)
                
                Text("Login using social networks")
                    .frame(width: 300, alignment: .center)
                    .padding(EdgeInsets(top:20, leading: 0, bottom: 11, trailing: 0))
                    .foregroundStyle(Color(.white))
                
                //  Social networks login buttons
                HStack {
                    Button(action: loginWithFacebook, label: {
                        Text("Facebook")
                            .fontWeight(.bold)
                            .frame(width: 150, height: 40)
                            .foregroundStyle(Color(.white))
                            .background(Color("blue-gray"))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                    
                    Button(action: loginWithX, label: {
                        Text("X")
                            .fontWeight(.bold)
                            .frame(width: 150, height: 40)
                            .foregroundStyle(Color(.white))
                            .background(Color("blue-gray"))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                }
                
            }.padding(.horizontal, 77.0)
            
            
        }
        
    }
}

struct registerView: View {
    
    @State var userEmail = ""
    @State var userPassword = ""
    @State var userConfirmPassword = ""
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
                
                Text("Choose a profile picture")
                    .foregroundStyle(Color(.white))
                    .fontWeight(.bold)
                    .frame(width: 300)
                
                Text("You can change or choose it later")
                    .font(.footnote)
                    .foregroundStyle(Color(.gray))
                    .frame(width: 300)
                    .padding(.bottom)
                
                //  Button to take a picture or choose an image
                Button(action: takePicture, label: {
                    ZStack {
                        
                        Image("profilePic")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 80)
                        
                        Image(systemName: "camera")
                            .resizable()
                            .foregroundStyle(Color(.white))
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 40, height: 40)
                    }.frame(width: 300, height: 100)
                })
                
                //  Email label
                Text("Email *")
                    .foregroundStyle(Color("dark-cian"))
                    .font(.title3)
                    .fontWeight(.bold)
                //  Email textfield
                TextField("sample@mail.com", text: $userEmail).foregroundStyle(Color(.white))
                Divider().frame( height: 1).background(Color("dark-cian")).padding(.bottom)
                
                //  User password label
                Text("Password *")
                    .foregroundStyle(Color(.white))
                    .fontWeight(.bold)
                    .font(.title3)
                //  User password textfield
                SecureField("******", text: $userPassword).font(.caption).foregroundColor(.gray).foregroundStyle(Color(.white))
                Divider().frame( height: 1).background(Color(.white)).padding(.bottom)
                
                //  User confirm password label
                Text("Confirm password *")
                    .foregroundStyle(Color(.white))
                    .fontWeight(.bold)
                    .font(.title3)
                //  User confirm password textfield
                SecureField("******", text: $userConfirmPassword).font(.caption).foregroundColor(.gray).foregroundStyle(Color(.white))
                Divider().frame( height: 1).background(Color(.white)).padding(.bottom)
        
                Spacer(minLength: 25)
                
                Button(action: loginSession, label: {
                    Text("Register")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundStyle(Color(.white))
                        .frame( maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                        .padding(EdgeInsets(top: 11, leading: 0, bottom: 11, trailing: 0))
                        .overlay(RoundedRectangle(cornerRadius: 6).stroke(Color("dark-cian")).shadow(color: .white, radius: 6))
                })
                
                Spacer(minLength: 15)
                
                Text("Login using social networks")
                    .frame(width: 300, alignment: .center)
                    .padding(EdgeInsets(top:20, leading: 0, bottom: 11, trailing: 0))
                    .foregroundStyle(Color(.white))
                
                //  Social networks login buttons
                HStack {
                    Button(action: loginWithFacebook, label: {
                        Text("Facebook")
                            .fontWeight(.bold)
                            .frame(width: 150, height: 40)
                            .foregroundStyle(Color(.white))
                            .background(Color("blue-gray"))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                    
                    Button(action: loginWithX, label: {
                        Text("X")
                            .fontWeight(.bold)
                            .frame(width: 150, height: 40)
                            .foregroundStyle(Color(.white))
                            .background(Color("blue-gray"))
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                    })
                }
                
            }.padding(.horizontal, 77.0)
            
            
        }
        
    }
}

struct loginAndRegisterView: View {
    
    @State var typeViewSession = false
    
    var body: some View {
        
        VStack {
            
            HStack {
                //  Login & Register Header
                Spacer()
                Button("Login") {
                    typeViewSession = true
                }.foregroundColor(typeViewSession ? .white : .gray)
                
                Spacer()
                Button("Register") {
                    typeViewSession = false
                }.foregroundColor(typeViewSession ? .gray : .white)
                
                Spacer()
            }
            
            Spacer(minLength: 42)
            if typeViewSession {
                loginView()
            } else {
                registerView()
            }
        }
    }
}


func loginSession(){
    print("Login in ....")
}

func loginWithFacebook(){
    print("Login in with facebook....")
}

func loginWithX(){
    print("Login in with X....")
}

func takePicture()  {
    print("Taking picture ...")
}


struct ContentView: View {
    var body: some View {
        
        ZStack {
            
            Spacer()
            //  Background color
            Color("marine").ignoresSafeArea()
            
            VStack {
                
                //  App logo
                Image("appLogo").resizable().aspectRatio(contentMode: .fit).frame(width: 250).padding(.bottom, 60)
                
                loginAndRegisterView()
            }
        }
    }
}

#Preview {
    ContentView()
}
