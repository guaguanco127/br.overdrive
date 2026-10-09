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
        "rect": [ 85.0, 104.0, 1480.0, 630.0 ],
        "description": "_br.overdrive.example.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com -- https://github.com/guaguanco127/ -- Credits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016).",
        "showontab": 1,
        "boxes": [
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-source",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
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
                        "rect": [ 100.0, 100.0, 1000.0, 620.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "comment": "Source (Int) 0 Off, 1 drum loop, 2 Anton, 3 plucks, 4 drum L / Anton R, 5 mic (adc~ 1)",
                                    "id": "s-in",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 15.0, 15.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-t",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "int", "int", "int", "int", "int" ],
                                    "patching_rect": [ 15.0, 50.0, 100.0, 22.0 ],
                                    "text": "t i i i i i"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-lb",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 640.0, 15.0, 72.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-lbt",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "bang", "bang" ],
                                    "patching_rect": [ 640.0, 45.0, 65.0, 22.0 ],
                                    "text": "t b b b"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-note1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 15.0, 80.0, 260.0, 20.0 ],
                                    "text": "drumLoop.aif and anton.aif ship with Max"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-m1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 15.0, 110.0, 212.0, 22.0 ],
                                    "text": "open drumLoop.aif, loop 1, 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-p1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 15.0, 140.0, 79.0, 22.0 ],
                                    "text": "sfplay~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-m2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 240.0, 110.0, 191.0, 22.0 ],
                                    "text": "open anton.aif, loop 1, 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-p2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 240.0, 140.0, 79.0, 22.0 ],
                                    "text": "sfplay~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-note2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 640.0, 80.0, 420.0, 20.0 ],
                                    "text": "plucks: one every 1.2 s, random pitch, so each echo is easy to hear"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-on",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 640.0, 110.0, 40.0, 22.0 ],
                                    "text": "1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-metro",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 640.0, 140.0, 79.0, 22.0 ],
                                    "text": "metro 1200"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-pt",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "bang" ],
                                    "patching_rect": [ 640.0, 170.0, 51.0, 22.0 ],
                                    "text": "t b b"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-r1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 640.0, 200.0, 86.0, 22.0 ],
                                    "text": "random 100"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-sc",
                                    "maxclass": "newobj",
                                    "numinlets": 6,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 640.0, 230.0, 130.0, 22.0 ],
                                    "text": "scale 0 99 0.4 1."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-env",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 640.0, 260.0, 93.0, 22.0 ],
                                    "text": "$1 1 0. 220"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-envl",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 640.0, 290.0, 51.0, 22.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-r2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 800.0, 200.0, 79.0, 22.0 ],
                                    "text": "random 12"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-plus",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 800.0, 230.0, 44.0, 22.0 ],
                                    "text": "+ 48"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-mtof",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 800.0, 260.0, 44.0, 22.0 ],
                                    "text": "mtof"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-saw",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 800.0, 290.0, 44.0, 22.0 ],
                                    "text": "saw~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-pl",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 640.0, 320.0, 40.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-adc",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 900.0, 140.0, 58.0, 22.0 ],
                                    "text": "adc~ 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 15.0, 370.0, 44.0, 22.0 ],
                                    "text": "== 1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f1",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 15.0, 400.0, 51.0, 22.0 ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 15.0, 430.0, 51.0, 22.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 200.0, 370.0, 44.0, 22.0 ],
                                    "text": "== 2"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 200.0, 400.0, 51.0, 22.0 ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 200.0, 430.0, 51.0, 22.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 385.0, 370.0, 44.0, 22.0 ],
                                    "text": "== 3"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 385.0, 400.0, 51.0, 22.0 ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 385.0, 430.0, 51.0, 22.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 570.0, 370.0, 44.0, 22.0 ],
                                    "text": "== 4"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 570.0, 400.0, 51.0, 22.0 ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l4",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 570.0, 430.0, 51.0, 22.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-eq5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 815.0, 370.0, 44.0, 22.0 ],
                                    "text": "== 5"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-f5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 815.0, 400.0, 51.0, 22.0 ],
                                    "text": "$1 20"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-l5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 815.0, 430.0, 51.0, 22.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g1",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 15.0, 460.0, 40.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 200.0, 460.0, 40.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 385.0, 460.0, 40.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g5",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 815.0, 460.0, 40.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g4l",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 570.0, 460.0, 40.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-g4r",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 640.0, 460.0, 40.0, 22.0 ],
                                    "text": "*~"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-outL",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 15.0, 510.0, 58.0, 22.0 ],
                                    "text": "*~ 0.7"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-outR",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 200.0, 510.0, 58.0, 22.0 ],
                                    "text": "*~ 0.7"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "s-note3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 280.0, 510.0, 560.0, 20.0 ],
                                    "text": "each source has its own 20 ms fade: switching never clicks (selector~ would). 0 = Off: every fade closes"
                                }
                            },
                            {
                                "box": {
                                    "comment": "Left Source (Signal)",
                                    "id": "s-o1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 15.0, 550.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "Right Source (Signal)",
                                    "id": "s-o2",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 200.0, 550.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "s-g5", 0 ],
                                    "source": [ "s-adc", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-envl", 0 ],
                                    "source": [ "s-env", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-pl", 0 ],
                                    "source": [ "s-envl", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-f1", 0 ],
                                    "source": [ "s-eq1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-f2", 0 ],
                                    "source": [ "s-eq2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-f3", 0 ],
                                    "source": [ "s-eq3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-f4", 0 ],
                                    "source": [ "s-eq4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-f5", 0 ],
                                    "source": [ "s-eq5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-l1", 0 ],
                                    "source": [ "s-f1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-l2", 0 ],
                                    "source": [ "s-f2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-l3", 0 ],
                                    "source": [ "s-f3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-l4", 0 ],
                                    "source": [ "s-f4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-l5", 0 ],
                                    "source": [ "s-f5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outL", 0 ],
                                    "order": 1,
                                    "source": [ "s-g1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outR", 0 ],
                                    "order": 0,
                                    "source": [ "s-g1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outL", 0 ],
                                    "order": 1,
                                    "source": [ "s-g2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outR", 0 ],
                                    "order": 0,
                                    "source": [ "s-g2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outL", 0 ],
                                    "order": 1,
                                    "source": [ "s-g3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outR", 0 ],
                                    "order": 0,
                                    "source": [ "s-g3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outL", 0 ],
                                    "source": [ "s-g4l", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outR", 0 ],
                                    "source": [ "s-g4r", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outL", 0 ],
                                    "order": 1,
                                    "source": [ "s-g5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-outR", 0 ],
                                    "order": 0,
                                    "source": [ "s-g5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-t", 0 ],
                                    "source": [ "s-in", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g1", 1 ],
                                    "source": [ "s-l1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g2", 1 ],
                                    "source": [ "s-l2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g3", 1 ],
                                    "source": [ "s-l3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g4l", 1 ],
                                    "order": 1,
                                    "source": [ "s-l4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g4r", 1 ],
                                    "order": 0,
                                    "source": [ "s-l4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g5", 1 ],
                                    "source": [ "s-l5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-lbt", 0 ],
                                    "source": [ "s-lb", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-m1", 0 ],
                                    "source": [ "s-lbt", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-m2", 0 ],
                                    "source": [ "s-lbt", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-on", 0 ],
                                    "source": [ "s-lbt", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-p1", 0 ],
                                    "source": [ "s-m1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-p2", 0 ],
                                    "source": [ "s-m2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-pt", 0 ],
                                    "source": [ "s-metro", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-saw", 0 ],
                                    "source": [ "s-mtof", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-metro", 0 ],
                                    "source": [ "s-on", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-o1", 0 ],
                                    "source": [ "s-outL", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-o2", 0 ],
                                    "source": [ "s-outR", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g1", 0 ],
                                    "order": 1,
                                    "source": [ "s-p1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g4l", 0 ],
                                    "order": 0,
                                    "source": [ "s-p1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g2", 0 ],
                                    "order": 1,
                                    "source": [ "s-p2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g4r", 0 ],
                                    "order": 0,
                                    "source": [ "s-p2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-g3", 0 ],
                                    "source": [ "s-pl", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-mtof", 0 ],
                                    "source": [ "s-plus", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-r1", 0 ],
                                    "source": [ "s-pt", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-r2", 0 ],
                                    "source": [ "s-pt", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-sc", 0 ],
                                    "source": [ "s-r1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-plus", 0 ],
                                    "source": [ "s-r2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-pl", 1 ],
                                    "source": [ "s-saw", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-env", 0 ],
                                    "source": [ "s-sc", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-eq1", 0 ],
                                    "source": [ "s-t", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-eq2", 0 ],
                                    "source": [ "s-t", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-eq3", 0 ],
                                    "source": [ "s-t", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-eq4", 0 ],
                                    "source": [ "s-t", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s-eq5", 0 ],
                                    "source": [ "s-t", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 802.0, 98.0, 120.0, 22.0 ],
                    "text": "p source"
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
                    "patching_rect": [ 1007.0, 8.0, 470.0, 74.0 ],
                    "text": "_br.overdrive.example.1.0 -- Created by Brian Riordan, guaguanco127@gmail.com\nhttps://github.com/guaguanco127/\nCredits: antiderivative anti-aliasing (Parker, Zavalishin & Le Bivic, \"Reducing the Aliasing of Nonlinear Waveshaping Using Continuous-Time Convolution\", DAFx-16, 2016)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-title",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 15.0, 300.0, 20.0 ],
                    "text": "br.overdrive"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n1",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 45.0, 722.0, 60.0 ],
                    "text": "Overdrive, stereo. Tight cuts the lows BEFORE the drive (keeps it from going muddy); Drive pushes the signal into a soft tanh curve; Bias clips the two halves differently for warm even harmonics; Tone rolls off the fizz AFTER the drive. Auto-gain holds the level as Drive goes up, Level trims the driven signal, Dry/Wet blends, On/Off fades to dry and pauses the DSP. Antialiased, so high Drive stays clean."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n2",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 118.0, 736.0, 60.0 ],
                    "text": "Two files, same DSP inside:\nbr.overdrive.1.0 = core, no UI (in: L, R, Drive, Tight, Tone, Bias, Auto-gain, Level, Dry/Wet, On/Off; out: L, R).\nbr.overdrive.ui.1.0 = the same core with dials, for a bpatcher (Patching > Bpatcher, or drag the file in).\nBoth need to be in your Max search path (same folder as your patch is easiest)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n3",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 220.0, 563.0, 33.0 ],
                    "text": "A: the UI. Raise A's slider, then turn Drive up and down: with Auto-gain on the level stays put; flip it off to hear the jump it prevents. Sweep Tight on the drum loop, Tone on the mic."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n4",
                    "linecount": 2,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 281.0, 560.0, 33.0 ],
                    "text": "B: the core alone, Drive swept 9..39 dB by a slow sine (a signal into Drive is smooth), Tight 150 Hz, Bias 50 %. Auto-gain (default on) holds the level as it sweeps."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n5",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 342.0, 560.0, 20.0 ],
                    "text": "Numbers into the UI's inlets move its controls. Hover any inlet or outlet for its range and default."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n6",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 560.0, 787.0, 20.0 ],
                    "text": "Pick a source in the menu (it starts Off). Outputs start muted at -70 dB: turn on audio, then raise ONE slider slowly (A and B play the same source)."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-n7",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 590.0, 300.0, 20.0 ],
                    "text": "By Brian Riordan. github.com/guaguanco127"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-alabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 860.0, 171.0, 175.0, 20.0 ],
                    "text": "A: br.overdrive.ui.1.0"
                }
            },
            {
                "box": {
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-a",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "br.overdrive.ui.1.0.maxpat",
                    "numinlets": 10,
                    "numoutlets": 3,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "" ],
                    "patching_rect": [ 802.0, 193.0, 160.0, 154.0 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-blabel",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1178.0, 138.0, 260.0, 20.0 ],
                    "text": "B: core, Drive swept by a sine"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-b",
                    "maxclass": "newobj",
                    "numinlets": 10,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 1052.0, 343.0, 380.0, 22.0 ],
                    "text": "br.overdrive.1.0"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-bnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1437.0, 343.0, 40.0, 20.0 ],
                    "text": "core"
                }
            },
            {
                "box": {
                    "id": "obj-gaina",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 802.0, 403.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -70.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "A out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "A",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "A out"
                }
            },
            {
                "box": {
                    "id": "obj-gainb",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 1052.0, 403.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_initial": [ -70.0 ],
                            "parameter_initial_enable": 1,
                            "parameter_longname": "B out",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "B",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "B out"
                }
            },
            {
                "box": {
                    "id": "obj-dactog",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 872.0, 403.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dacnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 902.0, 403.0, 75.0, 20.0 ],
                    "text": "audio on/off"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-dac",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 802.0, 563.0, 72.0, 22.0 ],
                    "text": "dac~ 1 2"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-menu",
                    "items": [ "Off", ",", "drum loop", ",", "Anton", ",", "plucks (synth)", ",", "drum L / Anton R", ",", "mic (adc~ 1)" ],
                    "maxclass": "umenu",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "int", "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 802.0, 68.0, 150.0, 22.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-menunote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 802.0, 45.0, 200.0, 20.0 ],
                    "text": "source: Off until you pick one"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-ratelm",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1178.0, 168.0, 85.0, 22.0 ],
                    "text": "loadmess 150"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-ratenote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1273.0, 168.0, 100.0, 20.0 ],
                    "text": "Tight 150 Hz"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-lfo",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1115.0, 217.0, 75.0, 22.0 ],
                    "text": "cycle~ 0.05"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-lfonote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1208.0, 218.0, 150.0, 20.0 ],
                    "text": "one sweep every 20 s"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-lfomul",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1115.0, 247.0, 45.0, 22.0 ],
                    "text": "*~ 15."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-lfoadd",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 1115.0, 277.0, 45.0, 22.0 ],
                    "text": "+~ 24."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-lfoaddnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1192.0, 277.0, 100.0, 20.0 ],
                    "text": "Drive 9..39 dB"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-1",
                    "linecount": 4,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.0, 400.0, 561.0, 60.0 ],
                    "text": "State outlet: each UI has a last outlet that sends drive <dB>, tight <Hz>, tone <Hz>, bias <%>, autogain 0/1, level <dB>, drywet <%> and on 0/1 the moment a control changes. The core has none: whatever drives a core already knows the values. Open [p State outlet] (also a tab at the top) to see it read by name with [route drive tight tone bias autogain level drywet on]."
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
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
                        "rect": [ 0.0, 26.0, 1480.0, 604.0 ],
                        "showontab": 1,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "State from A (UI)",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 30.0, 95.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-2",
                                    "linecount": 4,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 15.0, 600.0, 60.0 ],
                                    "text": "Each br.overdrive UI sends its state out of its LAST outlet as named messages: drive <dB>, tight <Hz>, tone <Hz>, bias <%>, autogain 0/1, level <dB>, drywet <%> and on 0/1, the moment a control changes. Read them by NAME with [route drive tight tone bias autogain level drywet on], never by position: names stay put when a tool gains controls."
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 70.0, 100.0, 58.0, 20.0 ],
                                    "text": "A (UI)"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 9,
                                    "numoutlets": 9,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 30.0, 135.0, 560.0, 22.0 ],
                                    "text": "route drive tight tone bias autogain level drywet on"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-d0",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 30.0, 170.0, 55.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-l0",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 30.0, 195.0, 66.0, 20.0 ],
                                    "text": "drive"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-d1",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 100.0, 170.0, 55.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-l1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.0, 195.0, 66.0, 20.0 ],
                                    "text": "tight"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-d2",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 170.0, 170.0, 55.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-l2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 170.0, 195.0, 66.0, 20.0 ],
                                    "text": "tone"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-d3",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 240.0, 170.0, 55.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-l3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 240.0, 195.0, 66.0, 20.0 ],
                                    "text": "bias"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-d4",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 310.0, 170.0, 55.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-l4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 310.0, 195.0, 66.0, 20.0 ],
                                    "text": "autogain"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-d5",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 380.0, 170.0, 55.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-l5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 380.0, 195.0, 66.0, 20.0 ],
                                    "text": "level"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-d6",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 450.0, 170.0, 55.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-l6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 450.0, 195.0, 66.0, 20.0 ],
                                    "text": "drywet"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-d7",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 520.0, 170.0, 55.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-l7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.0, 195.0, 66.0, 20.0 ],
                                    "text": "on"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-d0", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-d1", 0 ],
                                    "source": [ "obj-4", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-d2", 0 ],
                                    "source": [ "obj-4", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-d3", 0 ],
                                    "source": [ "obj-4", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-d4", 0 ],
                                    "source": [ "obj-4", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-d5", 0 ],
                                    "source": [ "obj-4", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-d6", 0 ],
                                    "source": [ "obj-4", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-d7", 0 ],
                                    "source": [ "obj-4", 7 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 922.0, 375.0, 128.0, 22.0 ],
                    "text": "p \"State outlet\""
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-biaslm",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1262.0, 308.0, 77.0, 22.0 ],
                    "text": "loadmess 50"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-biasnote",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1342.0, 308.0, 80.0, 20.0 ],
                    "text": "Bias 50 %"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-a", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gaina", 1 ],
                    "source": [ "obj-a", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gaina", 0 ],
                    "source": [ "obj-a", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gainb", 1 ],
                    "source": [ "obj-b", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-gainb", 0 ],
                    "source": [ "obj-b", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 5 ],
                    "source": [ "obj-biaslm", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 0 ],
                    "source": [ "obj-dactog", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 1 ],
                    "source": [ "obj-gaina", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 0 ],
                    "source": [ "obj-gaina", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 1 ],
                    "source": [ "obj-gainb", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-dac", 0 ],
                    "source": [ "obj-gainb", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-lfomul", 0 ],
                    "source": [ "obj-lfo", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 2 ],
                    "source": [ "obj-lfoadd", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-lfoadd", 0 ],
                    "source": [ "obj-lfomul", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-source", 0 ],
                    "source": [ "obj-menu", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 3 ],
                    "source": [ "obj-ratelm", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 1 ],
                    "order": 1,
                    "source": [ "obj-source", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-a", 0 ],
                    "order": 1,
                    "source": [ "obj-source", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 1 ],
                    "midpoints": [ 912.5, 132.32354736328125, 1101.611111111111, 132.32354736328125 ],
                    "order": 0,
                    "source": [ "obj-source", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-b", 0 ],
                    "midpoints": [ 811.5, 139.4508819580078, 1061.5, 139.4508819580078 ],
                    "order": 0,
                    "source": [ "obj-source", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-a::obj-c-autogain": [ "Auto-gain", "Auto-gain", 0 ],
            "obj-a::obj-c-bias": [ "Bias", "Bias", 0 ],
            "obj-a::obj-c-drive": [ "Drive", "Drive", 0 ],
            "obj-a::obj-c-drywet": [ "Dry/Wet", "Dry/Wet", 0 ],
            "obj-a::obj-c-level": [ "Level", "Level", 0 ],
            "obj-a::obj-c-on": [ "On/Off", "On/Off", 0 ],
            "obj-a::obj-c-tight": [ "Tight", "Tight", 0 ],
            "obj-a::obj-c-tone": [ "Tone", "Tone", 0 ],
            "obj-gaina": [ "A out", "A", 0 ],
            "obj-gainb": [ "B out", "B", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "parameter_overrides": {
                "obj-a::obj-c-drive": {
                    "parameter_exponent": 2.0,
                    "parameter_range": [ 0.0, 128.0 ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}