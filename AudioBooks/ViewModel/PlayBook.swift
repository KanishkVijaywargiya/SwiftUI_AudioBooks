//
//  PlayBook.swift
//  AudioBooks
//
//  Created by KANISHK VIJAYWARGIYA on 25/07/21.
//

import AVFoundation

var audioPlayer: AVPlayer?

func playSound(sound: String?) {
    
    guard let url = URL.init(string: sound ?? "") else { return }
    
    print(url)
    
    let playerItem = AVPlayerItem.init(url: url)
    audioPlayer = AVPlayer.init(playerItem: playerItem)
    audioPlayer?.play()
}
