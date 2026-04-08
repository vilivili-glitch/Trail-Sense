#!/bin/bash
for file in /workspace/app/src/main/res/layout/*.xml /workspace/app/src/main/res/xml/*.xml; do
    sed -i 's/@drawable\/ruler/@drawable\/ic_tool_distance_convert/g' "$file"
done

sed -i 's/R.drawable.ruler/R.drawable.ic_tool_distance_convert/g' /workspace/app/src/main/java/com/kylecorry/trail_sense/tools/map/ui/MapFragment.kt
sed -i 's/R.drawable.ruler/R.drawable.ic_tool_distance_convert/g' /workspace/app/src/main/java/com/kylecorry/trail_sense/tools/photo_maps/ui/ViewPhotoMapFragment.kt
