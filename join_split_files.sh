#!/bin/bash

cat system/system/priv-app/KikaKeyboard/KikaKeyboard.apk.* 2>/dev/null >> system/system/priv-app/KikaKeyboard/KikaKeyboard.apk
rm -f system/system/priv-app/KikaKeyboard/KikaKeyboard.apk.* 2>/dev/null
cat product/priv-app/GmsCoreGo/GmsCoreGo.apk.* 2>/dev/null >> product/priv-app/GmsCoreGo/GmsCoreGo.apk
rm -f product/priv-app/GmsCoreGo/GmsCoreGo.apk.* 2>/dev/null
