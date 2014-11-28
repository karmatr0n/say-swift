#!/usr/bin/env swift
//
//  say.swift
//  say 1 hello
//
//  Created by Alejandro Juárez Robles on 11/28/14.
//  Copyright (c) 2014 MonsterLabs. All rights reserved.
//

import Foundation
import ApplicationServices

var rc: OSErr? = nil
var channel: SpeechChannel = nil
var vs: UnsafeMutablePointer<VoiceSpec> = nil
var voice: Int16
var text: String = "What do you want to say?"

if Process.arguments.count <= 1 {
  voice = Int16(1)
}
else {
  voice = Int16(Process.arguments[1].toInt()!)
}

if Process.arguments.count == 3 {
      text = Process.arguments[2]
}

rc = GetIndVoice(voice, vs)

rc = NewSpeechChannel(vs, &channel)

var string: CFStringRef = CFStringCreateWithCString(nil, text, kCFStringEncodingASCII)
rc = SpeakCFString(channel, string, nil)

if rc < 0  {
  println("Unable to speak!")
}

while (SpeechBusy() != 0 ) {
  sleep(1)
}
