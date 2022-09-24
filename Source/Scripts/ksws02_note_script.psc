Scriptname ksws02_note_script extends ReferenceAlias  

event OnRead()
	GetOwningQuest().SetStage(200)
endEvent