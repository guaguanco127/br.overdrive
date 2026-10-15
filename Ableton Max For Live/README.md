# Ableton Max for Live device: br.overdrive.1.0  
   
By Brian Riordan  
guaguanco127 [at] gmail [dot] com  
brianriordanmusic [at] gmail [dot] com  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.overdrive.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.overdrive](https://github.com/guaguanco127/br.overdrive)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents 

[About](#About)  
[What is a Max for Live Device?](#M4L)  
[How To Install](#Install)  
[Credits](#Credits)  

## <a name="About"></a>About

Overdrive, stereo, built in gen~. Tight cuts the lows before the drive so it stays tight instead of muddy; Drive pushes the signal into a smooth tanh curve; Bias makes the two halves of the wave clip differently, for the warm even harmonics of a tube stage; Tone rolls off the fizz after the drive. Auto-gain keeps the level steady as Drive goes up, so Drive changes the sound, not the loudness. Antialiased, so high Drive stays clean. Every control fades, so nothing clicks, and Off pauses the DSP.

A compact stereo audio effect with eight controls, all Live parameters, so you can automate them or map them to a controller. One parameter bank, **Overdrive**: Drive, Tight, Tone, Bias, Auto-gain, Level, Dry/Wet, On/Off. The device's On/Off fades to dry and pauses the DSP; Live's own device switch bypasses it completely. There is no extra output gain: use Level to match the bypassed sound and Live's mixer for the rest.

**Drive:** 0 to 128 dB. How hard the signal is pushed into the curve. The dial is curved, so most of its travel covers the musical range (about 32 dB at noon). Unlike a normalized saturator, the result depends on how hard you play: loud notes break up more than quiet ones. Near the top it behaves like a fuzz: even the noise floor of a quiet input gets pushed into the curve, so gate the input or back off Drive if you hear hiss between notes. Default 18.

**Tight:** 20 to 1000 Hz, 12 dB/oct high-pass BEFORE the drive. Low notes push the curve hardest and smear into mud, so cutting them first keeps the distortion focused. 20 Hz = open. Default 20.

**Tone:** 500 to 20000 Hz, 12 dB/oct low-pass AFTER the drive. Distortion adds harmonics far up the spectrum (fizz); Tone rolls them off. Default 8000.

**Bias:** 0 to 100 %. Shifts the signal along the curve, so the positive half of the wave hits the flat top sooner than the negative half. Symmetric clipping (0 %) makes only odd harmonics: hollow and square-ish. Asymmetric clipping adds even harmonics, above all the octave: rounder and warmer, the classic tube sound. Bias grows with Drive and with how hard you play. A DC blocker removes the offset the lopsided wave makes, and the peak stays inside +-1 at any Bias. Default 20.

**Auto-gain:** more Drive also means louder, which fools the ear into hearing "better". Auto-gain cuts by what the drive adds: a -12 dB peak input comes out within about 1 dB of the same peak at any Drive. Default on.

**Level:** -24 to +12 dB, the level of the driven signal before Dry/Wet. Use it to match the bypassed sound. Default 0.

**Dry/Wet:** 0 to 100 %, linear. Default 100.

**On/Off:** Off fades to the dry signal at full level over 20 ms, then the overdrive stops computing (no CPU) until it is switched back on. Default on.  

## <a name="M4L"></a>What Is a Max For Live Device?

Max For Live brings the power and flexibility of Max to Ableton Live. Max For Live gives you access to hundreds of exclusive custom plug-ins (Live Devices) as well as the tools to build your own. These can be MIDI and audio effects, audio and video synthesizers, 3D Jitter visuals, as well as tools that interact with the Live application itself, via the Live API.

## <a name="Install"></a>How To Install

1. Make sure you have Ableton Live Suite installed on your computer, and that Live is closed while installing. 

2. For Mac:  
Go to your user folder  
Then Music > Ableton > User Library > Presets > Audio Effects > Max Audio Effect  
Copy br.overdrive.1.0.amxd into that folder

3. For Windows: \Users\[username]\Documents\Ableton\User Library\Presets\Audio Effects\Max Audio Effect  
  
4. Open Ableton Live. On the left-hand side, look for Max for Live > Max Audio Effect and then the name of this device.

5. Either double-click the device, or drag it onto the track where you want it.

## <a name="Credits"></a>Credits

Antiderivative antialiasing: Julian Parker, Vadim Zavalishin and Efflam Le Bivic, "Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution", DAFx-16, 2016. DSP, filters, Auto-gain and patches by Brian Riordan.
