//
//  AudioPlayerView.swift
//  AudioBooks
//
//  Created by MANAS VIJAYWARGIYA on 01/08/21.
//

import SwiftUI

struct AudioPlayerView: View {
    @State private var shouldPlay = false
    @State private var rotateArm = false;
    @State private var degrees = 0.0;
    
    var body: some View {
        ZStack {
            Image("img")
                .resizable()
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
                .scaleEffect(1.1)
                .scaledToFill()
                .blur(radius: 3.0)
                .ignoresSafeArea()
            
            PlayerBox().offset(y: -165.5)
            
            VStack {
                Image("img")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 275, height: 275)
                    .clipShape(Circle())
                    .shadow(color: .black, radius: 8, x: 0.0, y: 0.0)
                    .overlay(
                        VStack {
                            Circle()
                                .frame(width: 50, height: 50)
                                .opacity(0.8)
                                .position(x: 137.5, y: 137.5)
                        }
                    )
                    .rotationEffect(Angle.degrees(degrees))
                    .animation(Animation.linear(duration: shouldPlay ? 250 : 0).delay(1.5))
                
                ArmView(rotateArm: $rotateArm)
                
                HStack(spacing: UIScreen.main.bounds.width / 5 - 30) {
                    Button(action: {}) {
                        Image(systemName: "gobackward.15")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    
                    
                    Button(action: {
                        shouldPlay.toggle()
                        if shouldPlay {
                            rotateArm.toggle()
                            degrees = 36000
                            playSound(sound: "https://p73.f4.n0.cdn.getcloudapp.com/items/7KuoDpNL/422e717e-7fb3-44ff-9795-97778a0ec521.mp3"
                            )
                        } else {
                            rotateArm.toggle()
                            withAnimation {
                                degrees = 0
                            }
                            audioPlayer?.pause()
                        }
                    }) {
                        Image(systemName: !shouldPlay ? "play.circle.fill" : "pause.fill")
                            .font(.system(size: 70))
                            .frame(width: 70, height: 70)
                    }
                    .padding([.horizontal, .vertical], 8)
                    .background(Color.white).opacity(0.8)
                    .clipShape(Circle())
                    
                    
                    Button(action: {}) {
                        Image(systemName: "goforward.15")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                }
                .padding()
                
                ZStack(alignment: .leading) {
                    Capsule().fill(Color.black.opacity(0.08)).frame(height: 8)
                    Capsule().fill(Color.red).frame(width: 200, height: 8)
                }
                .padding()
            }
        }
    }
}

struct AudioPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        AudioPlayerView()
    }
}
