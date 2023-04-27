//
//  ContentView.swift
//  About Me App
//
//  Created by Lia Manning on 4/17/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showAlert1 = false
    @State private var showAlert2 = false
    @State private var showAlert3 = false
    @State private var showAlert4 = false
    @State private var showAlert5 = false
    @State private var showAlert6 = false
    
    
    var body: some View {
        
        ZStack {
            
            VStack {
                
                VStack {
                    
                    HStack {
                        
                        // opening bracket for top title
                        Text("   {  ")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color(red: 0.008, green: 0.289, blue: 0.679))
                            .multilineTextAlignment(.leading)
                        
                        // top title, two lines: "hello, world!" and "i'm lia manning"
                        VStack {
                            Text(" hello, world!")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color(red: 0.008, green: 0.289, blue: 0.679))
                            Text(" i'm lia manning!")
                                .font(.body)
                                .multilineTextAlignment(.leading)
                                .foregroundColor(Color(red: 0.008, green: 0.289, blue: 0.679))
                        }
                        
                        // closing bracket for top title
                        Text("}")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(Color(red: 0.008, green: 0.289, blue: 0.679))
                            .padding()
                    }
                    
                    // image of logos representing my interests
                    Image("logos")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .background(Rectangle() .foregroundColor(.white))
                        .padding(10)
                        .border(.purple, width: 1)

                }
                .padding()
                
                // description
                HStack {
                    Text("click any image below to find out more about me...")
                        .font(.footnote)
                        .foregroundColor(Color(red: 0.008, green: 0.289, blue: 0.679))
                        .multilineTextAlignment(.center)
                        .italic()
                }
              //  .padding()
                
                VStack {
                    
                    HStack {
                        
                        VStack {
                            // the marzi button gives info about my dog
                            Button(action: {
                                showAlert1 = true
                            }, label: {
                                Image("marzi")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                            })
                        }
                        .alert(isPresented: $showAlert1, content: {
                            Alert(title: Text("Meet Marzi!"), message: Text("Marzi is a 5-year-old border collie mix and my husband and I are obsessed with her!"), dismissButton: .default(Text("🦴 🐶 🐾")))
                            
                        })
                        
                        VStack {
                            // the beach button gives info about my favorite place
                            Button(action: {
                                showAlert2 = true
                            }, label: {
                                Image("beach")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                            })
                            
                        }
                        .alert(isPresented: $showAlert2, content: {
                            Alert(title: Text("My Favorite Place"), message: Text("I love the beach! My favorite beaches I've visited are in the Florida Keys, Barbados, and of course the Jersey Shore!"), dismissButton: .default(Text("🏝️ 🌊 🐚")))
                        })
                        
                    }
                    
                    HStack {
                        
                        VStack {
                            // iced coffee button
                            Button(action: {
                                showAlert3 = true
                            }, label: {
                                Image("icedCoffee")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                            })
                        }
                        .alert(isPresented: $showAlert3, content: {
                            Alert(title: Text("Iced Coffee Year-round!"), message: Text("I will only drink coffee in iced form! My favorites are anything with caramel, non-dairy milk, and Rook's S'mores Cold Brew!"), dismissButton: .default(Text("🧊 🧊 🧊")))
                            
                        })
                        
                        VStack {
                            // photography button
                            Button(action: {
                                showAlert4 = true
                            }, label: {
                                Image("camera")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                            })
                            
                        }
                        .alert(isPresented: $showAlert4, content: {
                            Alert(title: Text("Photography"), message: Text("I love photography and have shot tons of fun and exciting subjects, including engagement photos for close friends, a wedding, and a tulip farm!"), dismissButton: .default(Text("💍 📸 🌷")))
                        })
                        
                    }
                    
                    HStack {
                        
                        VStack {
                            // engineering button
                            Button(action: {
                                showAlert5 = true
                            }, label: {
                                Image("rollerCoaster")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                            })
                        }
                        .alert(isPresented: $showAlert5, content: {
                            Alert(title: Text("Structural Engineering"), message: Text("My Bachelor's and Master's degrees are in Civil Engineering with a focus in Structural Engineering. I worked as a Structural Engineer for 5 years before becoming a teacher. My initial interest in engineering stemmed from wanting to create the structures that hold up rollercoaster tracks!"), dismissButton: .default(Text("🎢 🌉 🏗️")))
                            
                        })
                        
                        VStack {
                            // tennis button
                            Button(action: {
                                showAlert6 = true
                            }, label: {
                                Image("tennis")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .padding()
                            })
                            
                        }
                        .alert(isPresented: $showAlert6, content: {
                            Alert(title: Text("Coach Manning"), message: Text("I played tennis in high school and now I coach it! I played doubles in high school and that is still my favorite way to play now. I also use the same racquet as Rafael Nadal!"), dismissButton: .default(Text("🎾 🎾 🎾")))
                        })
                        
                    }
                    
                    
                }
//                .background(Rectangle() .foregroundColor(.white))
//                .cornerRadius(15)
//                .shadow(radius: 15)

                
                }
            }
        
        }

       
        
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
