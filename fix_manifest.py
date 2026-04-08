import re

with open("/workspace/app/src/main/AndroidManifest.xml", "r") as f:
    content = f.read()

# delete the receiver block for AppWidgetTides
content = re.sub(r'<receiver\s+android:name="com\.kylecorry\.trail_sense\.tools\.tides\.widgets\.AppWidgetTides".*?</receiver>', '', content, flags=re.DOTALL)

# delete the receiver block for AppWidgetPedometer
content = re.sub(r'<receiver\s+android:name="com\.kylecorry\.trail_sense\.tools\.pedometer\.widgets\.AppWidgetPedometer".*?</receiver>', '', content, flags=re.DOTALL)

with open("/workspace/app/src/main/AndroidManifest.xml", "w") as f:
    f.write(content)

