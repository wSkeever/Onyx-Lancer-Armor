Scriptname ksws02_journal_script extends ReferenceAlias  

event OnRead()
	GetOwningQuest().SetStage(400)
endEvent