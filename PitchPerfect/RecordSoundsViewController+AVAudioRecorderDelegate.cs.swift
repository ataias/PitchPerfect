//
//  RecordSoundsViewController+AVAudioRecorderDelegate.cs.swift
//  PitchPerfect
//
//  Created by Ataias Pereira Reis on 22/11/20.
//

import UIKit
import AVFoundation

// Note on organization: creating extensions for implementing protocols can be done liberally and it helps keeping the code tidy.

extension RecordSoundsViewController: AVAudioRecorderDelegate {

    func audioRecorderDidFinishRecording(_ recorder: AVAudioRecorder, successfully flag: Bool) {
        if flag {
            performSegue(withIdentifier: "stopRecording", sender: recorder.url)
        } else {
            print("recording was not successful")
        }
    }
}

