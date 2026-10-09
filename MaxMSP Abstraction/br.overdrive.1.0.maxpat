{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [
            85.0,
            104.0,
            1180.0,
            360.0
        ],
        "description": "br.overdrive.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016).",
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        800.0,
                        15.0,
                        440.0,
                        74.0
                    ],
                    "text": "br.overdrive.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016).",
                    "linecount": 5
                }
            },
            {
                "box": {
                    "comment": "Left In (Signal)",
                    "id": "obj-1",
                    "index": 1,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right In (Signal)",
                    "id": "obj-2",
                    "index": 2,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        90.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Drive (Signal/Float) dB 0. to 128. How hard the signal is pushed into the curve: more Drive = more distortion. Default 18",
                    "id": "obj-3",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        165.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Tight (Signal/Float) Hz 20. to 1000. 12 dB/oct high-pass BEFORE the drive: lows push the curve hardest and turn to mud, so cutting them first keeps the distortion tight. 20 = open. Default 20",
                    "id": "obj-4",
                    "index": 4,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        240.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Tone (Signal/Float) Hz 500. to 20000. 12 dB/oct low-pass AFTER the drive: tames the fizz the drive adds on top. Default 8000",
                    "id": "obj-5",
                    "index": 5,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        315.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Bias (Signal/Float) % 0. to 100. Shifts the curve so the two halves of the wave clip differently: adds even harmonics, the warm tube sound. 0 = symmetric, odd harmonics only. A DC blocker removes the offset it makes. Default 20",
                    "id": "obj-6",
                    "index": 6,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        390.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Auto-gain (Signal/Int) 0 off, 1 on: more Drive makes it louder, so this cuts by what the drive adds, keeping a -12 dB peak input near the same peak at any Drive. Default 1",
                    "id": "obj-7",
                    "index": 7,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        465.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Level (Signal/Float) dB -24. to 12. Output level of the driven signal, before Dry/Wet: match it to the bypass sound. Default 0",
                    "id": "obj-8",
                    "index": 8,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        540.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Dry/Wet (Signal/Float) % 0. to 100. Linear blend. Default 100",
                    "id": "obj-9",
                    "index": 9,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        615.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "On/Off (Signal/Int) 1 on, 0 off. Off fades to the dry signal at full level over 20 ms, then the DSP pauses (no CPU). Default 1",
                    "id": "obj-10",
                    "index": 10,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        "signal"
                    ],
                    "patching_rect": [
                        690.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-20",
                    "maxclass": "newobj",
                    "numinlets": 10,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "dsp.gen",
                        "rect": [
                            134.0,
                            87.0,
                            1300.0,
                            884.0
                        ],
                        "boxes": [
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-1",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        29.0,
                                        20.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 1 @comment \"Left In (Signal)\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        91.0,
                                        130.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 2 @comment \"Right In (Signal)\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        153.0,
                                        240.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 3 @comment \"Drive (Signal/Float) dB 0 to 128 -- default 18\" @default 18"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-4",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        215.0,
                                        350.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 4 @comment \"Tight (Signal/Float) Hz 20 to 1000, 20 = open -- default 20\" @default 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-5",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        277.0,
                                        20.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 5 @comment \"Tone (Signal/Float) Hz 500 to 20000 -- default 8000\" @default 8000"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-6",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        339.0,
                                        130.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 6 @comment \"Bias (Signal/Float) % 0 to 100 -- default 20\" @default 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-7",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        401.0,
                                        240.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 7 @comment \"Auto-gain (Signal/Int) 0 off 1 on -- default 1\" @default 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-8",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        463.0,
                                        350.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 8 @comment \"Level (Signal/Float) dB -24 to 12 -- default 0\" @default 0"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-9",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        525.0,
                                        20.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 9 @comment \"Dry/Wet (Signal/Float) % 0 to 100 -- default 100\" @default 100"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-10",
                                    "linecount": 6,
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [
                                        ""
                                    ],
                                    "patching_rect": [
                                        587.0,
                                        130.0,
                                        100.0,
                                        89.0
                                    ],
                                    "text": "in 10 @comment \"On/Off (Signal/Int) 1 on 0 off -- default 1\" @default 1"
                                }
                            },
                            {
                                "box": {
                                    "code": "// br.overdrive 1.0 -- stereo overdrive. Brian Riordan, https://github.com/guaguanco127/\n// chain: Tight high-pass -> Drive -> tanh with Bias, antialiased -> DC blocker -> Tone low-pass -> Auto-gain -> Level -> Dry/Wet -> On/Off\n// in1 L, in2 R, in3 Drive dB, in4 Tight Hz, in5 Tone Hz, in6 Bias %, in7 Auto-gain 0/1, in8 Level dB, in9 Dry/Wet %, in10 On/Off 0/1\n// MUST MATCH the codebox in br.overdrive.rnbo.1.0\nHistory sDrive(18);\nHistory sTight(20);\nHistory sTone(8000);\nHistory sBias(0.2);\nHistory sAg(1);\nHistory sLev(1);\nHistory sMix(1);\nHistory sOn(1);\nHistory hpa1L(0);\nHistory hpa2L(0);\nHistory hpa1R(0);\nHistory hpa2R(0);\nHistory x1L(0);\nHistory x1R(0);\nHistory dxL(0);\nHistory dyL(0);\nHistory dxR(0);\nHistory dyR(0);\nHistory lpa1L(0);\nHistory lpa2L(0);\nHistory lpa1R(0);\nHistory lpa2R(0);\n\nsr = samplerate;\nkc = 1 - exp(-1 / (0.02 * sr));\nrdc = exp(-2 * pi * 5 / sr);\n\ntDrive = clamp(in3, 0, 128);\ntTight = clamp(in4, 20, 1000);\ntTone = clamp(in5, 500, min(20000, sr * 0.45));\ntBias = clamp(in6, 0, 100) * 0.01;\ntAg = in7 > 0.5;\ntLev = dbtoa(clamp(in8, -24, 12));\ntMix = clamp(in9, 0, 100) * 0.01;\ntOn = in10 > 0.5;\n\n// fully off = paused: the dry signal passes, nothing below is computed, every control snaps to its\n// target and the filters start from silence, so switching back on fades in cleanly\no1 = in1;\no2 = in2;\nnDrive = tDrive;\nnTight = tTight;\nnTone = tTone;\nnBias = tBias;\nnAg = tAg;\nnLev = tLev;\nnMix = tMix;\nnOn = tOn;\nnhpa1L = 0;\nnhpa2L = 0;\nnhpa1R = 0;\nnhpa2R = 0;\nnx1L = 0;\nnx1R = 0;\nndxL = 0;\nndyL = 0;\nndxR = 0;\nndyR = 0;\nnlpa1L = 0;\nnlpa2L = 0;\nnlpa1R = 0;\nnlpa2R = 0;\n// locals used inside the block, declared first\nw = 0;\nw2 = 0;\nc1 = 0;\nc2 = 0;\nc3 = 0;\nvL = 0;\nv1L = 0;\nv2L = 0;\nhL = 0;\nvR = 0;\nv1R = 0;\nv2R = 0;\nhR = 0;\ng = 0;\nbb = 0;\ntb = 0;\nnrm = 0;\nuL = 0;\nu1L = 0;\nduL = 0;\nauL = 0;\nau1L = 0;\nlcL = 0;\nlc1L = 0;\nyL = 0;\nuR = 0;\nu1R = 0;\nduR = 0;\nauR = 0;\nau1R = 0;\nlcR = 0;\nlc1R = 0;\nyR = 0;\nsL = 0;\nsR = 0;\ndcL = 0;\ndcR = 0;\nd1 = 0;\nd2 = 0;\nd3 = 0;\nqL = 0;\nq1L = 0;\nq2L = 0;\nqR = 0;\nq1R = 0;\nq2R = 0;\nagc = 0;\nm = 0;\n\nif (tOn > 0 || sOn > 0.00001) {\n\t// 20 ms glide on every control, so nothing clicks\n\tnDrive = sDrive + (tDrive - sDrive) * kc;\n\tnTight = sTight + (tTight - sTight) * kc;\n\tnTone = sTone + (tTone - sTone) * kc;\n\tnBias = sBias + (tBias - sBias) * kc;\n\tnAg = sAg + (tAg - sAg) * kc;\n\tnLev = sLev + (tLev - sLev) * kc;\n\tnMix = sMix + (tMix - sMix) * kc;\n\tnOn = sOn + (tOn - sOn) * kc;\n\n\t// 1) Tight: 12 dB/oct high-pass BEFORE the drive. Lows push the curve hardest and turn to mud,\n\t// so cutting them first keeps the distortion tight. 20 Hz = open\n\tw = tan(pi * nTight / sr);\n\tc1 = 1 / (1 + w * (w + 1.41421356));\n\tc2 = w * c1;\n\tc3 = w * c2;\n\tvL = in1 - hpa2L;\n\tv1L = c1 * hpa1L + c2 * vL;\n\tv2L = hpa2L + c2 * hpa1L + c3 * vL;\n\thL = in1 - 1.41421356 * v1L - v2L;\n\tvR = in2 - hpa2R;\n\tv1R = c1 * hpa1R + c2 * vR;\n\tv2R = hpa2R + c2 * hpa1R + c3 * vR;\n\thR = in2 - 1.41421356 * v1R - v2R;\n\tnhpa1L = 2 * v1L - hpa1L;\n\tnhpa2L = 2 * v2L - hpa2L;\n\tnhpa1R = 2 * v1R - hpa1R;\n\tnhpa2R = 2 * v2R - hpa2R;\n\n\t// 2) Drive + Bias into tanh: y = tanh(g x + b) - tanh(b). Bias shifts the curve, so the two halves\n\t// of the wave clip differently: even harmonics, the warm tube sound. Bias 0 = symmetric, odd harmonics only.\n\t// Dividing by 1 + tanh(b) keeps the peak inside +-1 at any Bias.\n\t// Antialiased with 1st-order ADAA: the average of the curve between the last sample and this one,\n\t// = difference of log(cosh(u)) / difference of u. Both are computed fresh under the current Drive\n\t// and Bias every sample, so moving them never spikes.\n\t// log(cosh(u)) written as |u| + log(1 + exp(-2|u|)) - log(2), which never overflows.\n\tg = dbtoa(nDrive);\n\tbb = 0.5 * nBias;\n\ttb = tanh(bb);\n\tnrm = 1 / (1 + tb);\n\tuL = g * hL + bb;\n\tu1L = g * x1L + bb;\n\tduL = uL - u1L;\n\tauL = abs(uL);\n\tau1L = abs(u1L);\n\tlcL = auL + log(1 + exp(-2 * auL));\n\tlc1L = au1L + log(1 + exp(-2 * au1L));\n\tyL = (abs(duL) < 0.00001) ? tanh(0.5 * (uL + u1L)) : (lcL - lc1L) / duL;\n\tuR = g * hR + bb;\n\tu1R = g * x1R + bb;\n\tduR = uR - u1R;\n\tauR = abs(uR);\n\tau1R = abs(u1R);\n\tlcR = auR + log(1 + exp(-2 * auR));\n\tlc1R = au1R + log(1 + exp(-2 * au1R));\n\tyR = (abs(duR) < 0.00001) ? tanh(0.5 * (uR + u1R)) : (lcR - lc1R) / duR;\n\tsL = (yL - tb) * nrm;\n\tsR = (yR - tb) * nrm;\n\tnx1L = hL;\n\tnx1R = hR;\n\n\t// 3) DC blocker, 5 Hz one-pole: Bias makes the wave lopsided, which is an offset, DC\n\tdcL = sL - dxL + rdc * dyL;\n\tdcR = sR - dxR + rdc * dyR;\n\tndxL = sL;\n\tndyL = dcL;\n\tndxR = sR;\n\tndyR = dcR;\n\n\t// 4) Tone: 12 dB/oct low-pass AFTER the drive, tames the fizz the drive adds on top\n\tw2 = tan(pi * nTone / sr);\n\td1 = 1 / (1 + w2 * (w2 + 1.41421356));\n\td2 = w2 * d1;\n\td3 = w2 * d2;\n\tqL = dcL - lpa2L;\n\tq1L = d1 * lpa1L + d2 * qL;\n\tq2L = lpa2L + d2 * lpa1L + d3 * qL;\n\tqR = dcR - lpa2R;\n\tq1R = d1 * lpa1R + d2 * qR;\n\tq2R = lpa2R + d2 * lpa1R + d3 * qR;\n\tnlpa1L = 2 * q1L - lpa1L;\n\tnlpa2L = 2 * q2L - lpa2L;\n\tnlpa1R = 2 * q1R - lpa1R;\n\tnlpa2R = 2 * q2R - lpa2R;\n\n\t// 5) Auto-gain: more Drive = louder, so cut by what the drive adds to a -12 dB peak:\n\t// a -12 dB peak sine comes out near the same peak at any Drive. 0 dB Drive = no change\n\tagc = mix(1, 0.25 / tanh(g * 0.25), nAg);\n\n\t// 6) Level, then Dry/Wet, linear: dry and driven are close in phase, equal power would bump the middle.\n\t// Off fades to the dry signal at full level\n\tm = nMix * nOn;\n\to1 = mix(in1, q2L * agc * nLev, m);\n\to2 = mix(in2, q2R * agc * nLev, m);\n}\n\nout1 = o1;\nout2 = o2;\n\n// write state last\nsDrive = nDrive;\nsTight = nTight;\nsTone = nTone;\nsBias = nBias;\nsAg = nAg;\nsLev = nLev;\nsMix = nMix;\nsOn = nOn;\nhpa1L = nhpa1L;\nhpa2L = nhpa2L;\nhpa1R = nhpa1R;\nhpa2R = nhpa2R;\nx1L = nx1L;\nx1R = nx1R;\ndxL = ndxL;\ndyL = ndyL;\ndxR = ndxR;\ndyR = ndyR;\nlpa1L = nlpa1L;\nlpa2L = nlpa2L;\nlpa1R = nlpa1R;\nlpa2R = nlpa2R;\n",
                                    "fontface": 0,
                                    "fontname": "<Monospaced>",
                                    "fontsize": 12.0,
                                    "id": "obj-20",
                                    "maxclass": "codebox",
                                    "numinlets": 10,
                                    "numoutlets": 2,
                                    "outlettype": [
                                        "",
                                        ""
                                    ],
                                    "patching_rect": [
                                        29.0,
                                        556.0,
                                        900.0,
                                        2400.0
                                    ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        29.0,
                                        2980.0,
                                        200.0,
                                        22.0
                                    ],
                                    "text": "out 1 @comment \"Left Out (Signal)\""
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [
                                        770.0,
                                        2980.0,
                                        207.0,
                                        22.0
                                    ],
                                    "text": "out 2 @comment \"Right Out (Signal)\""
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "source": [
                                        "obj-1",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-2",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        1
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-3",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        2
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-4",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        3
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-5",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        4
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-6",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        5
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-7",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        6
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-8",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        7
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-9",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        8
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-10",
                                        0
                                    ],
                                    "destination": [
                                        "obj-20",
                                        9
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-20",
                                        0
                                    ],
                                    "destination": [
                                        "obj-21",
                                        0
                                    ]
                                }
                            },
                            {
                                "patchline": {
                                    "source": [
                                        "obj-20",
                                        1
                                    ],
                                    "destination": [
                                        "obj-22",
                                        0
                                    ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [
                        15.0,
                        110.0,
                        705.0,
                        22.0
                    ],
                    "text": "gen~ @title br.overdrive.1.0"
                }
            },
            {
                "box": {
                    "comment": "Left Out (Signal)",
                    "id": "obj-21",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        170.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right Out (Signal)",
                    "id": "obj-22",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        705.0,
                        170.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-24",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        800.0,
                        100.0,
                        380.0,
                        230.0
                    ],
                    "text": "br.overdrive: stereo overdrive. Tight cuts the lows before the drive so it stays tight; Drive pushes the signal into a tanh curve; Bias makes the two halves clip differently for warm even harmonics (a DC blocker removes the offset); Tone tames the fizz after the drive. Auto-gain evens out the level as Drive goes up, Level sets the driven signal, Dry/Wet is linear, On/Off fades to dry and then pauses the DSP. Antialiased (ADAA), so high Drive stays clean. All DSP is in the gen~; every control glides 20 ms, so nothing clicks. Defaults live in the gen~ (in N @default), so unconnected inlets need nothing. Every control inlet takes numbers OR signals. No State outlet here: whatever drives the core already knows the values. The .ui version reports them. [br.overdrive.ui.1.0] wraps this file with dials.",
                    "linecount": 16
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "source": [
                        "obj-1",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-2",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-3",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        2
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-4",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        3
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-5",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        4
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-6",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        5
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-7",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        6
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-8",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        7
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-9",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        8
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-10",
                        0
                    ],
                    "destination": [
                        "obj-20",
                        9
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-20",
                        0
                    ],
                    "destination": [
                        "obj-21",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "source": [
                        "obj-20",
                        1
                    ],
                    "destination": [
                        "obj-22",
                        0
                    ]
                }
            }
        ]
    }
}