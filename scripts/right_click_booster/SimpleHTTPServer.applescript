#Action:{"name":"Open Simple Http Server","appleScriptHandler":"open_simple_http_server","requiresDirectory":1}

on open_simple_http_server(dir)
	set p to (dir as text)
	tell application "Terminal"
    -- Python 3.0: python -m http.server 80
		do script "cd " & quoted form of p & " && echo \"\n@@@@@@@@@@@@@@@@@@@@@\nSimpleHttpServerAddr:\" &&ifconfig|grep \"inet \" |awk '{split($0,a);print \"    http://\"a[2]\":8000\"}' && python -m SimpleHTTPServer 8000"
		activate
	end tell
end open_simple_http_server
