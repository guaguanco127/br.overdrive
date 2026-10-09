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
        "openrect": [
            131.0,
            105.0,
            168.0,
            157.0
        ],
        "openrectmode": 0,
        "openinpresentation": 1,
        "devicewidth": 168.0,
        "description": "br.overdrive.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016).",
        "boxes": [
            {
                "box": {
                    "comment": "Left In (Signal)",
                    "id": "obj-in1",
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
                    "id": "obj-in2",
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
                    "comment": "Drive (Float) dB 0. to 128. Sets the dial. Default 18",
                    "id": "obj-in3",
                    "index": 3,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
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
                    "annotation": "How hard the signal is pushed into the curve. More Drive = more distortion. Default 18 dB",
                    "annotation_name": "Drive",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-c-drive",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        165.0,
                        60.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1.0,
                        31.0,
                        53.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 2.0,
                            "parameter_initial": [
                                18.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Drive",
                            "parameter_mmax": 128.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Drive",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "Drive"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t-drive",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        165.0,
                        125.0,
                        51.0,
                        22.0
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-ch-drive",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        165.0,
                        200.0,
                        79.0,
                        22.0
                    ],
                    "text": "change 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-pp-drive",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        165.0,
                        230.0,
                        110.0,
                        22.0
                    ],
                    "text": "prepend drive"
                }
            },
            {
                "box": {
                    "comment": "Tight (Float) Hz 20. to 1000. Sets the dial. Default 20",
                    "id": "obj-in4",
                    "index": 4,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        295.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "High-pass before the drive: cuts the lows that turn distortion muddy. All the way down = open. Default 20 Hz",
                    "annotation_name": "Tight",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-c-tight",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        295.0,
                        60.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        48.0,
                        31.0,
                        53.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                20.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Tight",
                            "parameter_mmax": 1000.0,
                            "parameter_mmin": 20.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Tight",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "Tight"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t-tight",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        295.0,
                        125.0,
                        51.0,
                        22.0
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-ch-tight",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        295.0,
                        200.0,
                        79.0,
                        22.0
                    ],
                    "text": "change 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-pp-tight",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        295.0,
                        230.0,
                        110.0,
                        22.0
                    ],
                    "text": "prepend tight"
                }
            },
            {
                "box": {
                    "comment": "Tone (Float) Hz 500. to 20000. Sets the dial. Default 8000",
                    "id": "obj-in5",
                    "index": 5,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        425.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Low-pass after the drive: tames the fizz on top. Default 8000 Hz",
                    "annotation_name": "Tone",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-c-tone",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        425.0,
                        60.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        103.0,
                        31.0,
                        53.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_exponent": 3.0,
                            "parameter_initial": [
                                8000.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Tone",
                            "parameter_mmax": 20000.0,
                            "parameter_mmin": 500.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Tone",
                            "parameter_type": 0,
                            "parameter_unitstyle": 3
                        }
                    },
                    "varname": "Tone"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t-tone",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        425.0,
                        125.0,
                        51.0,
                        22.0
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-ch-tone",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        425.0,
                        200.0,
                        79.0,
                        22.0
                    ],
                    "text": "change 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-pp-tone",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        425.0,
                        230.0,
                        110.0,
                        22.0
                    ],
                    "text": "prepend tone"
                }
            },
            {
                "box": {
                    "comment": "Bias (Float) % 0. to 100. Sets the dial. Default 20",
                    "id": "obj-in6",
                    "index": 6,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        555.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Clips the two halves of the wave differently: adds even harmonics, the warm tube sound. 0 = symmetric. Default 20 %",
                    "annotation_name": "Bias",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-c-bias",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        555.0,
                        60.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        1.0,
                        94.0,
                        53.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                20.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Bias",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Bias",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "Bias"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t-bias",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        555.0,
                        125.0,
                        51.0,
                        22.0
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-ch-bias",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        555.0,
                        200.0,
                        79.0,
                        22.0
                    ],
                    "text": "change 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-pp-bias",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        555.0,
                        230.0,
                        110.0,
                        22.0
                    ],
                    "text": "prepend bias"
                }
            },
            {
                "box": {
                    "comment": "Auto-gain (Int) 0 off, 1 on: evens out the level as Drive goes up. Sets the button. Default 1",
                    "id": "obj-in7",
                    "index": 7,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        685.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "More Drive makes it louder; this cuts by what the drive adds, so turning Drive changes the sound, not the level. Default on",
                    "annotation_name": "Auto-gain",
                    "id": "obj-c-autogain",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        685.0,
                        60.0,
                        60.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        56.0,
                        7.0,
                        95.0,
                        20.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "val1",
                                "val2"
                            ],
                            "parameter_initial": [
                                1
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Auto-gain",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Auto-gain",
                            "parameter_type": 2
                        }
                    },
                    "text": "Auto-gain",
                    "texton": "Auto-gain",
                    "varname": "Auto-gain"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t-autogain",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        685.0,
                        125.0,
                        51.0,
                        22.0
                    ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-ch-autogain",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        685.0,
                        200.0,
                        79.0,
                        22.0
                    ],
                    "text": "change 0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-pp-autogain",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        685.0,
                        230.0,
                        110.0,
                        22.0
                    ],
                    "text": "prepend autogain"
                }
            },
            {
                "box": {
                    "comment": "Level (Float) dB -24. to 12. Sets the dial. Default 0",
                    "id": "obj-in8",
                    "index": 8,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        815.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Level of the driven signal, before Dry/Wet: match it to the bypassed sound. Default 0 dB",
                    "annotation_name": "Level",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-c-level",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        815.0,
                        60.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        48.0,
                        94.0,
                        53.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                0.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Level",
                            "parameter_mmax": 12.0,
                            "parameter_mmin": -24.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Level",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "Level"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t-level",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        815.0,
                        125.0,
                        51.0,
                        22.0
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-ch-level",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        815.0,
                        200.0,
                        79.0,
                        22.0
                    ],
                    "text": "change 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-pp-level",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        815.0,
                        230.0,
                        110.0,
                        22.0
                    ],
                    "text": "prepend level"
                }
            },
            {
                "box": {
                    "comment": "Dry/Wet (Float) % 0. to 100. Sets the dial. Default 100",
                    "id": "obj-in9",
                    "index": 9,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        945.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Balance between the dry input and the driven signal, linear. Default 100",
                    "annotation_name": "Dry/Wet",
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-c-drywet",
                    "maxclass": "live.dial",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        "float"
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        945.0,
                        60.0,
                        44.0,
                        52.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        103.0,
                        94.0,
                        53.0,
                        52.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [
                                100.0
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "Dry/Wet",
                            "parameter_mmax": 100.0,
                            "parameter_modmode": 0,
                            "parameter_shortname": "Dry/Wet",
                            "parameter_type": 0,
                            "parameter_unitstyle": 5
                        }
                    },
                    "varname": "Dry/Wet"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t-drywet",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "float",
                        "float"
                    ],
                    "patching_rect": [
                        945.0,
                        125.0,
                        51.0,
                        22.0
                    ],
                    "text": "t f f"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-ch-drywet",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        945.0,
                        200.0,
                        79.0,
                        22.0
                    ],
                    "text": "change 0."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-pp-drywet",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        945.0,
                        230.0,
                        110.0,
                        22.0
                    ],
                    "text": "prepend drywet"
                }
            },
            {
                "box": {
                    "comment": "On/Off (Int) 1 on, 0 off: off fades to the dry signal. Sets the button. Default 1",
                    "id": "obj-in10",
                    "index": 10,
                    "maxclass": "inlet",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1075.0,
                        15.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "annotation": "Off fades to the dry signal at full level, then the overdrive pauses. Default on",
                    "annotation_name": "On/Off",
                    "id": "obj-c-on",
                    "maxclass": "live.text",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "",
                        ""
                    ],
                    "parameter_enable": 1,
                    "patching_rect": [
                        1075.0,
                        60.0,
                        60.0,
                        20.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        6.0,
                        7.0,
                        48.0,
                        20.0
                    ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_enum": [
                                "val1",
                                "val2"
                            ],
                            "parameter_initial": [
                                1
                            ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "On/Off",
                            "parameter_mmax": 1,
                            "parameter_modmode": 0,
                            "parameter_shortname": "On/Off",
                            "parameter_type": 2
                        }
                    },
                    "text": "Off",
                    "texton": "On",
                    "varname": "On/Off"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-t-on",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        1075.0,
                        125.0,
                        51.0,
                        22.0
                    ],
                    "text": "t i i"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-ch-on",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [
                        "",
                        "int",
                        "int"
                    ],
                    "patching_rect": [
                        1075.0,
                        200.0,
                        79.0,
                        22.0
                    ],
                    "text": "change 0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-pp-on",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [
                        ""
                    ],
                    "patching_rect": [
                        1075.0,
                        230.0,
                        110.0,
                        22.0
                    ],
                    "text": "prepend on"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-core",
                    "maxclass": "newobj",
                    "numinlets": 10,
                    "numoutlets": 2,
                    "outlettype": [
                        "signal",
                        "signal"
                    ],
                    "patching_rect": [
                        15.0,
                        170.0,
                        140.0,
                        22.0
                    ],
                    "text": "br.overdrive.1.0"
                }
            },
            {
                "box": {
                    "comment": "Left Out (Signal)",
                    "id": "obj-out1",
                    "index": 1,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        15.0,
                        280.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "Right Out (Signal)",
                    "id": "obj-out2",
                    "index": 2,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        90.0,
                        280.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "comment": "State (Message): drive <dB>, tight <Hz>, tone <Hz>, bias <%>, autogain 0/1, level <dB>, drywet <%> and on 0/1, sent the moment a control changes. Pick them out by name: [route drive tight tone bias autogain level drywet on]",
                    "id": "obj-state",
                    "index": 3,
                    "maxclass": "outlet",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        165.0,
                        280.0,
                        30.0,
                        30.0
                    ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-signature",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1665.0,
                        15.0,
                        440.0,
                        74.0
                    ],
                    "text": "br.overdrive.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-txt1",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1225.0,
                        60.0,
                        420.0,
                        60.0
                    ],
                    "text": "Each inlet feeds its control, and each control feeds the core, so the screen always shows what you hear. Starting values are the controls' Initial Values: Drive 18 dB, Tight 20 Hz, Tone 8000 Hz, Bias 20 %, Auto-gain on, Level 0 dB, Dry/Wet 100, On."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-txt2",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1225.0,
                        135.0,
                        420.0,
                        47.0
                    ],
                    "text": "[br.overdrive.1.0] is the real object: open it to see the gen~ inside. This file only adds the controls, so you can also patch the core directly and drive any control with a signal."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-txt3",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1225.0,
                        195.0,
                        411.0,
                        74.0
                    ],
                    "text": "Why Tight and Tone: low notes push the curve hardest and smear into mud, so Tight cuts them BEFORE the drive. Distortion adds harmonics far up the spectrum (fizz), so Tone rolls them off AFTER it. Why Auto-gain: more Drive also means louder, which fools the ear into hearing \"better\". Auto-gain cuts by what the drive adds, so Drive changes the sound, not the level."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-txt4",
                    "linecount": 5,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1225.0,
                        310.0,
                        493.0,
                        74.0
                    ],
                    "text": "The last outlet (State) reports the controls as drive <dB>, tight <Hz>, tone <Hz>, bias <%>, autogain 0/1, level <dB>, drywet <%> and on 0/1 the moment they change. Each control is tapped on its way into the core, so moving it, numbers into the inlets and preset recalls all show up. Only the UI has one: whatever drives the core directly already knows the values. Pick them out by name with [route drive tight tone bias autogain level drywet on]."
                }
            },
            {
                "box": {
                    "angle": 270.0,
                    "annotation": "br.overdrive.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016).",
                    "background": 1,
                    "bgcolor": [
                        0.0,
                        0.0,
                        0.0,
                        1.0
                    ],
                    "hint": "br.overdrive.ui.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016).",
                    "id": "obj-panel",
                    "maxclass": "panel",
                    "mode": 0,
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [
                        1665.0,
                        300.0,
                        160.0,
                        74.0
                    ],
                    "presentation": 1,
                    "presentation_rect": [
                        0.0,
                        0.0,
                        183.0,
                        169.0
                    ],
                    "proportion": 0.5,
                    "rounded": 7
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [
                        "obj-t-autogain",
                        0
                    ],
                    "source": [
                        "obj-c-autogain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-t-bias",
                        0
                    ],
                    "source": [
                        "obj-c-bias",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-t-drive",
                        0
                    ],
                    "source": [
                        "obj-c-drive",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-t-drywet",
                        0
                    ],
                    "source": [
                        "obj-c-drywet",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-t-level",
                        0
                    ],
                    "source": [
                        "obj-c-level",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-t-on",
                        0
                    ],
                    "source": [
                        "obj-c-on",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-t-tight",
                        0
                    ],
                    "source": [
                        "obj-c-tight",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-t-tone",
                        0
                    ],
                    "source": [
                        "obj-c-tone",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-pp-autogain",
                        0
                    ],
                    "source": [
                        "obj-ch-autogain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-pp-bias",
                        0
                    ],
                    "source": [
                        "obj-ch-bias",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-pp-drive",
                        0
                    ],
                    "source": [
                        "obj-ch-drive",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-pp-drywet",
                        0
                    ],
                    "source": [
                        "obj-ch-drywet",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-pp-level",
                        0
                    ],
                    "source": [
                        "obj-ch-level",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-pp-on",
                        0
                    ],
                    "source": [
                        "obj-ch-on",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-pp-tight",
                        0
                    ],
                    "source": [
                        "obj-ch-tight",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-pp-tone",
                        0
                    ],
                    "source": [
                        "obj-ch-tone",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-out1",
                        0
                    ],
                    "source": [
                        "obj-core",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-out2",
                        0
                    ],
                    "source": [
                        "obj-core",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        0
                    ],
                    "source": [
                        "obj-in1",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-c-on",
                        0
                    ],
                    "source": [
                        "obj-in10",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        1
                    ],
                    "source": [
                        "obj-in2",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-c-drive",
                        0
                    ],
                    "source": [
                        "obj-in3",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-c-tight",
                        0
                    ],
                    "source": [
                        "obj-in4",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-c-tone",
                        0
                    ],
                    "source": [
                        "obj-in5",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-c-bias",
                        0
                    ],
                    "source": [
                        "obj-in6",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-c-autogain",
                        0
                    ],
                    "source": [
                        "obj-in7",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-c-level",
                        0
                    ],
                    "source": [
                        "obj-in8",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-c-drywet",
                        0
                    ],
                    "source": [
                        "obj-in9",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-state",
                        0
                    ],
                    "source": [
                        "obj-pp-autogain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-state",
                        0
                    ],
                    "source": [
                        "obj-pp-bias",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-state",
                        0
                    ],
                    "source": [
                        "obj-pp-drive",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-state",
                        0
                    ],
                    "source": [
                        "obj-pp-drywet",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-state",
                        0
                    ],
                    "source": [
                        "obj-pp-level",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-state",
                        0
                    ],
                    "source": [
                        "obj-pp-on",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-state",
                        0
                    ],
                    "source": [
                        "obj-pp-tight",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-state",
                        0
                    ],
                    "source": [
                        "obj-pp-tone",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-ch-autogain",
                        0
                    ],
                    "source": [
                        "obj-t-autogain",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        6
                    ],
                    "source": [
                        "obj-t-autogain",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-ch-bias",
                        0
                    ],
                    "source": [
                        "obj-t-bias",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        5
                    ],
                    "source": [
                        "obj-t-bias",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-ch-drive",
                        0
                    ],
                    "source": [
                        "obj-t-drive",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        2
                    ],
                    "source": [
                        "obj-t-drive",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-ch-drywet",
                        0
                    ],
                    "source": [
                        "obj-t-drywet",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        8
                    ],
                    "source": [
                        "obj-t-drywet",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-ch-level",
                        0
                    ],
                    "source": [
                        "obj-t-level",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        7
                    ],
                    "source": [
                        "obj-t-level",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-ch-on",
                        0
                    ],
                    "source": [
                        "obj-t-on",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        9
                    ],
                    "source": [
                        "obj-t-on",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-ch-tight",
                        0
                    ],
                    "source": [
                        "obj-t-tight",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        3
                    ],
                    "source": [
                        "obj-t-tight",
                        1
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-ch-tone",
                        0
                    ],
                    "source": [
                        "obj-t-tone",
                        0
                    ]
                }
            },
            {
                "patchline": {
                    "destination": [
                        "obj-core",
                        4
                    ],
                    "source": [
                        "obj-t-tone",
                        1
                    ]
                }
            }
        ]
    }
}