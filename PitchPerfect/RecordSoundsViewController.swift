//
//  RecordSoundsViewController.swift
//  PitchPerfect
//
//  Created by Ataias Pereira Reis on 17/11/20.
//

import UIKit

class RecordSoundsViewController: UIViewController {

    // MARK: - Properties

    @IBOutlet weak var recordingLabel: UILabel!
    @IBOutlet weak var recordButton: UIButton!
    @IBOutlet weak var stopRecordingButton: UIButton!

    // MARK: - Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
        stopRecordingButton.isEnabled = false
    }

    // MARK: - IBActions
    @IBAction func recordAudio(_ sender: Any) {
        recordingLabel.text = "Recording in Progress"
        stopRecordingButton.isEnabled = true
        recordButton.isEnabled = false
    }

    @IBAction func stopRecording(_ sender: Any) {
        recordingLabel.text = "Tap To Record" // FIXME how to make sure this matches what was set on the storyboard?
        stopRecordingButton.isEnabled = false
        recordButton.isEnabled = true
    }
}

