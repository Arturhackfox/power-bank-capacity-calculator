//
//  ContentView.swift
//  powerBank caculator
//
//  Created by Arthur Sh on 23.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var bankCapacity = ""
    @State var number: Int = 0
    @State var summary: Int = 0
    
    var body: some View {
        VStack {
            //MARK: enter power bank capacity
            VStack{
                HStack(spacing: 40){
                    Text("Your powerbank capacity:")
                    TextField("Enter here mAh...", text: $bankCapacity)
                        .textFieldStyle(.automatic)
                }
              
                
                //MARK: My phone
                VStack{
                    Text("Choose your phone:")
                        .font(.title)
                    HStack{
                        Button {
                            number = Int(bankCapacity) ?? 0
                            summary = number / 2815

                        } label: {
                            phoneButton(color: .orange, iphone: "12 Pro")
                        }

                        Button {
                            number = Int(bankCapacity) ?? 0
                            summary = number / 3687
                        } label: {
                            phoneButton(color: .brown, iphone: "12 Pro Max")
                        }

                        
                    }
                    HStack{
                        Button {
                            number = Int(bankCapacity) ?? 0
                            summary = number / 3095
                        } label: {
                            phoneButton(color: .green, iphone: "13 Pro")
                        }

                        Button {
                            number = Int(bankCapacity) ?? 0
                            summary = number / 4352
                        } label: {
                            phoneButton(color: .yellow, iphone: "13 Pro Max")
                        }

                        
                    }
                    HStack{
                        Button {
                            number = Int(bankCapacity) ?? 0
                            summary = number / 3200
                        } label: {
                            phoneButton(color: .mint, iphone: "14 Pro")
                           
                        }

                        Button {
                            number = Int(bankCapacity) ?? 0
                            summary = number / 4323
                        } label: {
                            phoneButton(color: .cyan, iphone: "14 Pro Max")
                          
                        }

                    }
                }
                .padding(50)
                .padding(.bottom, 60)
                
                //MARK: Left recharges...
                
                VStack{
                    HStack {
                        Text("Left")
                            .font(.title3)
                        
                        Text(String(summary))
                            .font(.title3)

                        Text("Recharges")
                            .font(.title3)

                    }
                }
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
