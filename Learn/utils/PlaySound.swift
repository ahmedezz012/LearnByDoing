//
//  PlaySound.swift
//  Learn
//
//  Created by Ahmed Ezz on 30/12/2023.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playAudio(sound: String, type: String) {
    if let path = Bundle.main.path(forResource: sound, ofType: type)
    {
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
        } catch {
            print("can't play file")
        }
    }
}
