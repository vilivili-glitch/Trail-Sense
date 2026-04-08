#!/bin/bash
FILE="/workspace/app/src/main/java/com/kylecorry/trail_sense/tools/beacons/ui/BeaconDetailsFragment.kt"
sed -i '/import com.kylecorry.trail_sense.tools.tides.subsystem.TidesSubsystem/d' $FILE
sed -i '/import com.kylecorry.trail_sense.tools.tides.ui.TideFormatter/d' $FILE
sed -i '/private val tides by lazy/d' $FILE
sed -i '/private val tideFormatter by lazy/d' $FILE
sed -i '/private suspend fun updateBeaconTides/,/^    }/d' $FILE
sed -i '/updateBeaconTides(beacon)/d' $FILE

FILE2="/workspace/app/src/main/java/com/kylecorry/trail_sense/settings/migrations/PreferenceMigrator.kt"
sed -i '/pedometer/d' $FILE2
sed -i '/StepCounter/d' $FILE2
sed -i '/currentScale/d' $FILE2
sed -i '/LIGHTNING_STRIKE_DISTANCE/d' $FILE2
sed -i '/rulerScale/d' $FILE2
sed -i '/TideGeoJsonSource/d' $FILE2
