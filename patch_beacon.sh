#!/bin/bash
FILE="/workspace/app/src/main/java/com/kylecorry/trail_sense/tools/beacons/ui/BeaconDetailsFragment.kt"
sed -i '/import com.kylecorry.trail_sense.tools.tides.subsystem.TidesSubsystem/d' $FILE
sed -i '/import com.kylecorry.trail_sense.tools.tides.ui.TideFormatter/d' $FILE
sed -i '/private val tides by lazy/d' $FILE
sed -i '/private val tideFormatter by lazy/d' $FILE
sed -i '/private suspend fun updateBeaconTides/,/^    }/d' $FILE
sed -i '/updateBeaconTides(beacon)/d' $FILE
