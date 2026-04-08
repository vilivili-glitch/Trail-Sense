#!/bin/bash
FILE="/workspace/app/src/main/java/com/kylecorry/trail_sense/settings/migrations/PreferenceMigrator.kt"
sed -i '/StepCounter/d' $FILE
sed -i '/currentScale/d' $FILE
sed -i '/UserPreferences/d' $FILE
