//
//  AudioPlayerView.swift
//  AudioBooks
//
//  Created by MANAS VIJAYWARGIYA on 01/08/21.
//

import SwiftUI

struct AudioPlayerView: View {
    @State private var shouldPlay = false
    
    var body: some View {
        VStack {
            Image("img")
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 400)
                .clipShape(Circle())
                .shadow(color: .black, radius: 8, x: 0.0, y: 0.0)
                .overlay(
                    VStack {
                        Circle()
                            .frame(width: 50, height: 50)
                            .opacity(0.8)
                            .position(x: 175, y: 200)
                    }
                )
            
            Spacer()
            
            HStack(spacing: UIScreen.main.bounds.width / 5 - 30) {
                Button(action: {}) {
                    Image(systemName: "gobackward.15")
                        .font(.title)
                        .foregroundColor(.white)
                }

                
                Button(action: {
                    shouldPlay.toggle()
                    shouldPlay ? playSound(sound: "https://p73.f4.n0.cdn.getcloudapp.com/items/7KuoDpNL/422e717e-7fb3-44ff-9795-97778a0ec521.mp3"
                    )
                    :
                    audioPlayer?.pause()
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
            
            
            //            Button(action: {
            //                shouldPlay.toggle()
            //                if shouldPlay {
            //                    playSound(sound: "https://p73.f4.n0.cdn.getcloudapp.com/items/7KuoDpNL/422e717e-7fb3-44ff-9795-97778a0ec521.mp3"
            //                    )
            //                } else {
            //                    audioPlayer?.pause()
            //                }
            //            }) {
            //                HStack(spacing: 8) {
            //                    if !shouldPlay {
            //                        Text("Play")
            //                        Image(systemName: "play.circle.fill")
            //                            .imageScale(.large)
            //                    } else {
            //                        Text("Stop")
            //                        Image(systemName: "pause.fill")
            //                            .imageScale(.large)
            //                    }
            //                }
            //            }
            
            ZStack(alignment: .leading) {
                Capsule().fill(Color.black.opacity(0.08)).frame(height: 8)
                Capsule().fill(Color.red).frame(width: 200, height: 8)
            }
            .padding()
        }
        .background(
            Image("img")
                .resizable()
                .scaledToFill()
                .blur(radius: 8.0)
                .ignoresSafeArea()
        )
    }
}

struct AudioPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        AudioPlayerView()
    }
}
