#!/bin/bash
FILE="/workspace/app/src/main/java/com/kylecorry/trail_sense/shared/sensors/SensorService.kt"
sed -i '/fun getSpeedometer/,/    }/c\
    fun getSpeedometer(gps: IGPS? = null): ISpeedometer {\
        return when (userPrefs.navigation.speedometerMode) {\
            NavigationPreferences.SpeedometerMode.Backtrack -> BacktrackSpeedometer(context)\
            NavigationPreferences.SpeedometerMode.GPS -> gps ?: getGPS()\
            else -> gps ?: getGPS()\
        }\
    }' $FILE
