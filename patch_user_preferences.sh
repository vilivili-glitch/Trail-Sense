#!/bin/bash
FILE="/workspace/app/src/main/java/com/kylecorry/trail_sense/shared/UserPreferences.kt"
sed -i '/import com.kylecorry.trail_sense.tools.ruler.infrastructure.RulerPreferences/d' $FILE
sed -i '/import com.kylecorry.trail_sense.tools.turn_back.infrastructure.TurnBackPreferences/d' $FILE
sed -i '/import com.kylecorry.trail_sense.tools.waterpurification.infrastructure.WaterBoilTimerPreferences/d' $FILE
sed -i '/val ruler by lazy { RulerPreferences/d' $FILE
sed -i '/val waterBoilTimer by lazy { WaterBoilTimerPreferences/d' $FILE
sed -i '/val turnBack by lazy { TurnBackPreferences/d' $FILE
