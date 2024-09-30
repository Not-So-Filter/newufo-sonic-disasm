call tools/md5.bat epr-14124.built.bin md5

if "%md5%" equ "71cbad1abbc45c3578a512ae4fef004a" (
      echo MD5 identical!
) else (
      echo MD5 does not match.
)

pause