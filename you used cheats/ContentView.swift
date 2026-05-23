//
//  ContentView.swift
//  you used cheats
//
//  Created by dylan on 5/23/26.
//

import SwiftUI

struct ContentView: View {
    @State private var result = ""

    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()

            VStack {
                Spacer()

                Text("did you use cheats?")
                    .font(.largeTitle)
                    .foregroundColor(.white)

                HStack {
                    Button("yes") {
                        result = "yes"
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)

                    Button("no") {
                        result = "no"
                    }
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                }

                if result == "yes" {
                    Image("cheater")
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 300)
                        .cornerRadius(16)
                }

                if result == "no" {
                    Text("you're a good person")
                        .foregroundColor(.white)
                }

                Spacer()

                Text("bitetheapple")
                    .foregroundColor(.white)
                    .padding(.bottom, 20)
            }
        }
    }
}
