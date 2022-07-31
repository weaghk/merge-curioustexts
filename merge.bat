rem made by るみねん
rem 実際に使う際は「xxx」をすべて任意のファイル名(「怪文書まとめ」など)に置換してください
rem また、このバッチファイルは結合するファイルと同じディレクトリに置き、テキストファイルの名前は
rem "000filelist.txt"より後に来るような名前にすると一番初めに目次として出力ファイル一覧が
rem 書き込まれます。書き込みなおす際は一度出力ファイルを削除してください。

chcp 65001
dir /b *.txt > 000filelist.txt
echo [作品一覧] >> 出力ファイル名.txt
for /f %%s in (000filelist.txt) do (
  if not %%s==出力ファイル名.txt (
    echo %%s
    echo; >> 出力ファイル名.txt
    echo ----------------- >> 出力ファイル名.txt
    echo; >> 出力ファイル名.txt
    echo 「%%s」 >> 出力ファイル名.txt
    type C:\Users\user\OneDrive\デスクトップ\images\texts\%%s >> 出力ファイル名.txt
    echo; >> 出力ファイル名.txt
    echo ----------------- >> 出力ファイル名.txt
    echo; >> 出力ファイル名.txt
  )
)
endlocal
