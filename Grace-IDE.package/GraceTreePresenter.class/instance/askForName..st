adding
askForName: prompt
	^ UIManager default request: prompt initialAnswer: 'new module name' title: 'Please provide a name'