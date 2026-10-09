# Max/MSP RNBO Patch for External or VST Creation: br.overdrive.rnbo.1.0

By Brian Riordan
[guaguanco127@gmail.com](mailto:guaguanco127@gmail.com)
[brianriordanmusic@gmail.com](mailto:brianriordanmusic@gmail.com)
[https://www.brianriordanmusic.com/](https://www.brianriordanmusic.com/)

Repository for br.overdrive.1.0, with all related files, can be found here: [https://github.com/guaguanco127/br.overdrive](https://github.com/guaguanco127/br.overdrive)
Additional programs can be found here: [https://github.com/guaguanco127/br.max](https://github.com/guaguanco127/br.max)

These files were created with Max 9 and RNBO.

## Table of Contents

[About](#About)
[What is an External for Max/MSP?](#External)
[What is a VST or AU Audio Plugin?](#VST)
[How To Export as a Max/MSP External](#Export)
[How To Export as a VST or AU Audio Plugin](#ExportVST)
[Credits](#Credits)

## <a name="About"></a>About

Overdrive, stereo, built in gen~. Tight cuts the lows before the drive so it stays tight instead of muddy; Drive pushes the signal into a smooth tanh curve; Bias makes the two halves of the wave clip differently, for the warm even harmonics of a tube stage; Tone rolls off the fizz after the drive. Auto-gain keeps the level steady as Drive goes up, so Drive changes the sound, not the loudness. Antialiased, so high Drive stays clean. Every control fades, so nothing clicks, and Off pauses the DSP.

Inside [rnbo~], the eight params (Drive, Tight, Tone, Bias, Auto_gain, Level, Dry_Wet, On_Off) are the plugin parameters, with the same ranges and dial curves as the Max version. Inlets 3 to 10 set the same params, so the external has the same ten inlets as the abstraction. The gen~ code inside is the same as br.overdrive.1.0.

**Drive:** 0 to 128 dB. How hard the signal is pushed into the curve. The dial is curved, so most of its travel covers the musical range (about 32 dB at noon). Unlike a normalized saturator, the result depends on how hard you play: loud notes break up more than quiet ones. Near the top it behaves like a fuzz: even the noise floor of a quiet input gets pushed into the curve, so gate the input or back off Drive if you hear hiss between notes. Default 18.

**Tight:** 20 to 1000 Hz, 12 dB/oct high-pass BEFORE the drive. Low notes push the curve hardest and smear into mud, so cutting them first keeps the distortion focused. 20 Hz = open. Default 20.

**Tone:** 500 to 20000 Hz, 12 dB/oct low-pass AFTER the drive. Distortion adds harmonics far up the spectrum (fizz); Tone rolls them off. Default 8000.

**Bias:** 0 to 100 %. Shifts the signal along the curve, so the positive half of the wave hits the flat top sooner than the negative half. Symmetric clipping (0 %) makes only odd harmonics: hollow and square-ish. Asymmetric clipping adds even harmonics, above all the octave: rounder and warmer, the classic tube sound. Bias grows with Drive and with how hard you play. A DC blocker removes the offset the lopsided wave makes, and the peak stays inside +-1 at any Bias. Default 20.

**Auto-gain:** more Drive also means louder, which fools the ear into hearing "better". Auto-gain cuts by what the drive adds: a -12 dB peak input comes out within about 1 dB of the same peak at any Drive. Default on.

**Level:** -24 to +12 dB, the level of the driven signal before Dry/Wet. Use it to match the bypassed sound. Default 0.

**Dry/Wet:** 0 to 100 %, linear. Default 100.

**On/Off:** Off fades to the dry signal at full level over 20 ms, then the overdrive stops computing (no CPU) until it is switched back on. Default on.  

There is no State output: whatever drives the external or plugin already knows the values, and in a DAW they are normal plugin parameters.

## <a name="External"></a>What is an External for Max/MSP?

An external is a type of object that does not come with your Max/MSP library. Unlike the typical objects that you can call on all versions of Max/MSP, an external must be installed on the user's computer a specific way.

## <a name="VST"></a>What is a VST or AU Audio Plugin?

A VST is a third party audio plugin generally run within a digital audio workstation (DAW). A VST is cross platform for both Windows and Mac. An AU works the same way but is Mac only.

## <a name="Export"></a>How To Export as a Max/MSP External

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.overdrive.rnbo.1.0.maxpat. Drop a sample of your own onto the [playlist~] to hear it.

3. Double-click the [rnbo~] object while the patch is locked.

4. Click "Show Export Sidebar" on the right-hand side.

5. Select "Max External Export".

6. Name the object br.overdrive.1.0~ and export.

**Keep the ~ at the end of the name.** Without it, the external has exactly the same name as the abstraction br.overdrive.1.0, and Max loads whichever one it finds first, so you can't be sure which one you're using. The ~ also follows the Max convention for objects that process audio. Any other name is fine as long as it isn't the name of an abstraction you also use.

7. Copy the exported .mxo (Mac) or .mxe64 (Windows) into a folder on Max's search path, for example Documents/Max 9/Externals, and add that folder in Options > File Preferences if it isn't listed. Then create an object called br.overdrive.1.0~ in any patch. It has the same inlets as the abstraction, except that the eight controls take numbers only.

## <a name="ExportVST"></a>How To Export as a VST or AU Audio Plugin

**Please note that you can only use an audio plugin on the same computer that you created it with RNBO. Sending an audio plugin to another computer will not work and be flagged as an unrecognized developer**

1. Make sure Max 9 is installed on your computer, and that you have an RNBO license.

2. Open br.overdrive.rnbo.1.0.maxpat.

3. Double-click the [rnbo~] object while the patch is locked.

4. Select "Audio Plugin Export".

5. Choose VST3 or AU and the platform, name your plugin, and export. The eight parameters show up in your DAW for automation.

## <a name="Credits"></a>Credits

Antiderivative antialiasing: Julian Parker, Vadim Zavalishin and Efflam Le Bivic, "Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution", DAFx-16, 2016. DSP, filters, Auto-gain and patches by Brian Riordan.
