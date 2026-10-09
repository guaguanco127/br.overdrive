# Max/MSP Abstraction: br.overdrive.1.0

By Brian Riordan  
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)  
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)  
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.overdrive.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.overdrive](https://github.com/guaguanco127/br.overdrive)  
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9.

## Table of Contents

[About](#About)  
[Which file?](#Files)  
[What is an abstraction?](#Abstraction)  
[How To Install](#Install)  
[How To Use](#Use)  
[State outlet](#State)  
[Credits](#Credits)

## <a name="About"></a>About

Overdrive, stereo, built in gen~. Tight cuts the lows before the drive so it stays tight instead of muddy; Drive pushes the signal into a smooth tanh curve; Bias makes the two halves of the wave clip differently, for the warm even harmonics of a tube stage; Tone rolls off the fizz after the drive. Auto-gain keeps the level steady as Drive goes up, so Drive changes the sound, not the loudness. Antialiased, so high Drive stays clean. Every control fades, so nothing clicks, and Off pauses the DSP.

**Drive:** 0 to 128 dB. How hard the signal is pushed into the curve. The dial is curved, so most of its travel covers the musical range (about 32 dB at noon). Unlike a normalized saturator, the result depends on how hard you play: loud notes break up more than quiet ones. Near the top it behaves like a fuzz: even the noise floor of a quiet input gets pushed into the curve, so gate the input or back off Drive if you hear hiss between notes. Default 18.

**Tight:** 20 to 1000 Hz, 12 dB/oct high-pass BEFORE the drive. Low notes push the curve hardest and smear into mud, so cutting them first keeps the distortion focused. 20 Hz = open. Default 20.

**Tone:** 500 to 20000 Hz, 12 dB/oct low-pass AFTER the drive. Distortion adds harmonics far up the spectrum (fizz); Tone rolls them off. Default 8000.

**Bias:** 0 to 100 %. Shifts the signal along the curve, so the positive half of the wave hits the flat top sooner than the negative half. Symmetric clipping (0 %) makes only odd harmonics: hollow and square-ish. Asymmetric clipping adds even harmonics, above all the octave: rounder and warmer, the classic tube sound. Bias grows with Drive and with how hard you play. A DC blocker removes the offset the lopsided wave makes, and the peak stays inside +-1 at any Bias. Default 20.

**Auto-gain:** more Drive also means louder, which fools the ear into hearing "better". Auto-gain cuts by what the drive adds: a -12 dB peak input comes out within about 1 dB of the same peak at any Drive. Default on.

**Level:** -24 to +12 dB, the level of the driven signal before Dry/Wet. Use it to match the bypassed sound. Default 0.

**Dry/Wet:** 0 to 100 %, linear. Default 100.

**On/Off:** Off fades to the dry signal at full level over 20 ms, then the overdrive stops computing (no CPU) until it is switched back on. Default on.  

## <a name="Files"></a>Which file?

| File | What it is |
|---|---|
| br.overdrive.1.0 | No UI. The plain object to patch with |
| br.overdrive.ui.1.0 | With dials for Drive, Tight, Tone, Bias, Level and Dry/Wet and Auto-gain and On/Off buttons, ready for a [bpatcher] (168 x 157) |
| _br.overdrive.example.1.0 | Example patch: open this first. Pick a source (drum loop, voice, synth plucks, a stereo pair or your mic) |

The UI version contains the plain version and has the same inlets and audio outlets (plus State last), so either swaps in without rewiring. Open the UI version in patching mode for comments on how it is built.

## <a name="Abstraction"></a>What is an Abstraction?

An abstraction is a subpatcher that is saved as an external file, and can be used just like a standard Max object. As long as your abstraction can be found in the Max file path, you can type its name into a new object box and it will be loaded directly into your patch.

By saving your logic in an abstraction, you can create modules that can be used in future work with little or no additional programming.

## <a name="Install"></a>How To Install

1. Make sure you have Max 9 installed, and that the Max patch you are using is saved inside a folder.

2. Copy the .maxpat files you want into the same folder as your patch. The UI version needs the plain version next to it (br.overdrive.ui.1.0 uses br.overdrive.1.0).

3. In your patch, create an object called br.overdrive.1.0. For the version with controls, create a [bpatcher] and choose br.overdrive.ui.1.0.maxpat as its patcher.

## <a name="Use"></a>How To Use

| Inlet | Control | Type | Range | Default |
|---|---|---|---|---|
| 1 | Left In | Signal | | |
| 2 | Right In | Signal | | |
| 3 | Drive | Signal or Float (UI: Float only) | dB 0 to 128 | 18 |
| 4 | Tight | Signal or Float (UI: Float only) | Hz 20 to 1000 (20 = open) | 20 |
| 5 | Tone | Signal or Float (UI: Float only) | Hz 500 to 20000 | 8000 |
| 6 | Bias | Signal or Float (UI: Float only) | % 0 to 100 | 20 |
| 7 | Auto-gain | Signal or Int (UI: Int only) | 0 off, 1 on | 1 |
| 8 | Level | Signal or Float (UI: Float only) | dB -24 to 12 | 0 |
| 9 | Dry/Wet | Signal or Float (UI: Float only) | % 0 to 100 | 100 |
| 10 | On/Off | Signal or Int (UI: Int only) | 0 off, 1 on | 1 |

Outlets 1 / 2: Left Out / Right Out (Signal)  
Outlet 3 (UI version only): State (Message), see [State outlet](#State)

Every control fades, so you can change anything while audio plays, and every control also takes a signal or a number (the example patch sweeps Drive with a slow sine). In the UI version a number into an inlet moves its control, so the screen always shows what you hear. Hover any inlet or outlet in Max for its description.

Chain: Tight high-pass, then the drive gain, then tanh(gain x + bias) - tanh(bias), scaled by 1 / (1 + tanh(bias)) so the peak stays inside +-1. A 5 Hz DC blocker follows, then the Tone low-pass, Auto-gain, Level, the linear Dry/Wet and the On/Off fade. Both filters are 12 dB/oct state-variable (Q 0.707). The curve is antialiased with first-order ADAA (antiderivative antialiasing): each output sample is the average of the curve between the last input sample and this one, worked out from log(cosh), recomputed under the current Drive and Bias every sample so moving them never spikes. Auto-gain multiplies by 0.25 / tanh(gain x 0.25). Every control glides over 20 ms. Exact silence stays silent.

## <a name="State"></a>State outlet

The last outlet of the UI version (State) sends the current settings as named messages the moment they change: `drive 18.`, `tight 20.`, `tone 8000.`, `bias 20.`, `autogain 1`, `level 0.`, `drywet 100.` and `on 1`. Use it to keep a display, Mira or another patch in sync. Pick them out by name with [route drive tight tone bias autogain level drywet on], not by position, so your patch keeps working if a later version adds controls. Repeats are filtered out.

| Message | Type | Range |
|---|---|---|
| drive | Float | dB, 0 to 128 |
| tight | Float | Hz, 20 to 1000 |
| tone | Float | Hz, 500 to 20000 |
| bias | Float | %, 0 to 100 |
| autogain | Int | 0 off, 1 on |
| level | Float | dB, -24 to 12 |
| drywet | Float | %, 0 to 100 |
| on | Int | 0 off, 1 on |

The plain version has no State outlet: whatever drives it already knows the values. The example patch has a State outlet tab that shows this.

## <a name="Credits"></a>Credits

Antiderivative antialiasing: Julian Parker, Vadim Zavalishin and Efflam Le Bivic, "Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution", DAFx-16, 2016. DSP, filters, Auto-gain and patches by Brian Riordan.

Double-click the object to see inside it and study how it was built.
