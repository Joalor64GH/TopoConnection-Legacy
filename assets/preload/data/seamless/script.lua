function onCreate()
	setProperty('skipCountdown', true)
end

function onCreatePost()
	for i= 0, 3 do
		setPropertyFromGroup('opponentStrums', i, 'texture', 'noteskins/opponent/Nxxty')
    end
	
	for i = 0, getProperty('unspawnNotes.length') - 1 do
		if not getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'noteskins/opponent/Nxxty')
		end
	end

	function onDestroy()
		setProperty('skipCountdown', false)
	end
end