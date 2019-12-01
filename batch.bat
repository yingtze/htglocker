cls
@ECHO OFF
title @
if EXIST "HTG Locker" goto UNLOCK
if NOT EXIST Private goto MDLOCKER
:CONFIRM
echo @
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren Private "HTG Locker"
attrib +h +s "HTG Locker"
echo successfully
goto End
:UNLOCK
echo @
set/p "pass=>"
if NOT %pass%== 44448888 goto FAIL
attrib -h -s "HTG Locker"
ren "HTG Locker" Private
echo successfully
goto End
:FAIL
echo Invalid 2
goto end
:MDLOCKER
md Private
echo Private created successfully
goto End
:End
