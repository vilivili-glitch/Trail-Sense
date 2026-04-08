import re

with open("/workspace/app/src/main/java/com/kylecorry/trail_sense/settings/migrations/PreferenceMigrator.kt", "r") as f:
    content = f.read()

content = re.sub(r'PreferenceMigration\(7, 8\) \{ context, _ ->.*?\},', 'PreferenceMigration(7, 8) { context, _ -> },', content, flags=re.DOTALL)

with open("/workspace/app/src/main/java/com/kylecorry/trail_sense/settings/migrations/PreferenceMigrator.kt", "w") as f:
    f.write(content)

