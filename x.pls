.
Dim40	INIT	"GIT_DIR=c:\temp"
Data	DIM	40
Reply	DIM	1
.
	SETMODE	*ENV=Dim40
.
	MOVE	"GIT_DIR",Data	
	CLOCK	Env,Data
	DISPLAY	"Set: ",Data
	KEYIN 	Reply
.
	MOVE	"GIT_DIR=",Dim40
	SETMODE	*Env=Dim40
.
	MOVE	"GIT_DIR",Data	
	CLOCK	Env,Data
	IF	Over
	DISPLAY	"Keyword not found"
	ELSE
	DISPLAY	"Cleared: ",Data
	ENDIF
.
	KEYIN 	Reply
.
	STOP			
