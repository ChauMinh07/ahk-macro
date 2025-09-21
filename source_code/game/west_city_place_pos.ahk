#Requires AutoHotkey v2.0

west_city_getFarmPos(index) {
    ;x,y
    farmPos := Map()
    farmPos[1] := "480,345"
    farmPos[2] := "500,345"
    farmPos[3] := "520,345"
    farmPos[4] := "540,345"

    return farmPos[index]
}

west_city_getHillPos(index) {
    ;x,y
    HillPos := Map()

    HillPos[1] := "359,134"
    HillPos[2] := "359,156"
    HillPos[3] := "425,299"
    HillPos[4] := "435,301"
    HillPos[5] := "352,299"
    HillPos[6] := "336,251"
    HillPos[7] := "432,284"
    HillPos[8] := "425,290"
    HillPos[9] := "431,309"
    HillPos[10] := "323,193"
    HillPos[11] := "292,157"
    HillPos[12] := "428,45"
    HillPos[13] := "354,141"
    HillPos[14] := "351,150"
    HillPos[15] := "324,206"
    HillPos[16] := "286,197"
    HillPos[17] := "359,85"
    HillPos[18] := "316,63"
    HillPos[19] := "431,49"
    HillPos[20] := "380,134"

    return HillPos[index]
}

west_city_getGroundPos(index) {
    ;x,y
    GroundPos := Map()

    GroundPos[1] := "338, 87"
    GroundPos[2] := "338, 100"
    GroundPos[3] := "338, 112"
    GroundPos[4] := "407, 315"
    GroundPos[5] := "407, 330"
    GroundPos[6] := "388, 275"
    GroundPos[7] := "388, 290"
    GroundPos[8] := "388, 305"
    GroundPos[9] := "388, 320"
    GroundPos[10] := "375, 275"
    GroundPos[11] := "360, 275"
    GroundPos[12] := "349, 275"
    GroundPos[13] := "352, 256"
    GroundPos[14] := "367, 256"
    GroundPos[15] := "372, 256"
    GroundPos[16] := "387, 256"
    GroundPos[17] := "402, 256"
    GroundPos[18] := "407, 270"
    GroundPos[19] := "407, 285"
    GroundPos[20] := "407, 300"
    GroundPos[21] := "275, 229"
    GroundPos[22] := "255, 245"
    GroundPos[23] := "332, 227"
    GroundPos[24] := "317, 227"
    GroundPos[25] := "302, 229"
    GroundPos[26] := "314, 247"
    GroundPos[27] := "300, 245"
    GroundPos[28] := "285, 245"
    GroundPos[29] := "270, 245"
    GroundPos[30] := "287, 229"
    GroundPos[31] := "338, 124"
    GroundPos[32] := "338, 136"
    GroundPos[33] := "338, 148"
    GroundPos[34] := "338, 160"
    GroundPos[35] := "320, 112"
    GroundPos[36] := "320, 124"

    return GroundPos[index]
}