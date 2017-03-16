//
//  say.swift
//  say hello
//
//  Created by Alejandro Juárez Robles on 03/15/17.
//  Copyright (c) 2014 MonsterLabs. All rights reserved.
//

import Foundation
import AppKit

func text2speech(text: String) {
  let loop = RunLoop.main
  let mode = RunLoopMode.defaultRunLoopMode
  let synth = NSSpeechSynthesizer()
  synth.startSpeaking(text)
  while loop.run(mode: mode, before: Date(timeIntervalSinceNow: 0.1)) && synth.isSpeaking {}
  synth.stopSpeaking()
}

var text = "What do you want to say?"
if CommandLine.argc > 1 {
  text = CommandLine.arguments[1]
}

text2speech(text: text)
