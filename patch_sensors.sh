#!/bin/bash
FILE="/workspace/app/src/main/java/com/kylecorry/trail_sense/shared/sensors/SensorService.kt"
sed -i '/import com.kylecorry.trail_sense.tools.pedometer/d' $FILE
sed -i '/CurrentPaceSpeedometer/d' $FILE
sed -i '/AveragePaceSpeedometer/d' $FILE
sed -i '/StepCounter/d' $FILE
sed -i '/StrideLengthPaceCalculator/d' $FILE
sed -i '/fun getPedometer/,/    }/d' $FILE
sed -i '/fun getSpeedometer/,/    }/c\
    fun getSpeedometer(gps: IGPS? = null): ISpeedometer {\
        return when (userPrefs.navigation.speedometerMode) {\
            NavigationPreferences.SpeedometerMode.Backtrack -> BacktrackSpeedometer(context)\
            NavigationPreferences.SpeedometerMode.GPS -> gps ?: getGPS()\
            else -> gps ?: getGPS()\
        }\
    }' $FILE
