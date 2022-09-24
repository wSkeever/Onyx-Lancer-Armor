Scriptname ksws02_plans_script extends ReferenceAlias  

event OnRead()
	Quest q = GetOwningQuest()
	q.CompleteQuest()
	q.Stop()
endEvent