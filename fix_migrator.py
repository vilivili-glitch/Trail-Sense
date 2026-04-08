import re

with open("/workspace/app/src/main/java/com/kylecorry/trail_sense/settings/migrations/PreferenceMigrator.kt", "r") as f:
    content = f.read()

# I will just checkout HEAD and use python to regex replace the bodies of the migrations that use deleted classes
import subprocess
subprocess.run(["git", "checkout", "HEAD", "--", "/workspace/app/src/main/java/com/kylecorry/trail_sense/settings/migrations/PreferenceMigrator.kt"])

with open("/workspace/app/src/main/java/com/kylecorry/trail_sense/settings/migrations/PreferenceMigrator.kt", "r") as f:
    content = f.read()

# Replace StepCounter and pedometer imports
content = re.sub(r'import com\.kylecorry\.trail_sense\.tools\.pedometer\..*\n', '', content)
content = re.sub(r'import com\.kylecorry\.trail_sense\.tools\.tides\..*\n', '', content)

# Migration 5->6 (ruler)
# Replace body with empty
content = re.sub(r'PreferenceMigration\(5, 6\) \{ context, prefs ->.*?\},', 'PreferenceMigration(5, 6) { context, prefs -> },', content, flags=re.DOTALL)

# Migration 6->7 (pedometer)
content = re.sub(r'PreferenceMigration\(6, 7\) \{ context, prefs ->.*?\},', 'PreferenceMigration(6, 7) { context, prefs -> },', content, flags=re.DOTALL)

# TideGeoJsonSource
content = content.replace('TideGeoJsonSource.SOURCE_ID,', '')

with open("/workspace/app/src/main/java/com/kylecorry/trail_sense/settings/migrations/PreferenceMigrator.kt", "w") as f:
    f.write(content)

