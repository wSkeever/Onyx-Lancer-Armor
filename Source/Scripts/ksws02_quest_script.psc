;BEGIN FRAGMENT CODE - Do not edit anything between this and the end comment
;NEXT FRAGMENT INDEX 16
Scriptname ksws02_quest_script Extends Quest Hidden

;BEGIN ALIAS PROPERTY Note
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Note Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Journal
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Journal Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ArmorLocation
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_ArmorLocation Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ArmorLance
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ArmorLance Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KeyBandit
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KeyBandit Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KeyLocationBandit
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_KeyLocationBandit Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KeyWarlock
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KeyWarlock Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ArmorShield
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ArmorShield Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ArmorChest
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ArmorChest Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DeadActorMarker
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DeadActorMarker Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Storage
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Storage Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KeyForsworn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KeyForsworn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KeyChestWarlock
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KeyChestWarlock Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ArmorHands
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ArmorHands Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ArmorCirclet
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ArmorCirclet Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KeyLocationWarlock
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_KeyLocationWarlock Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ArmorBody
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ArmorBody Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ArmorSword
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ArmorSword Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ArmorFeet
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ArmorFeet Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KeyChestForsworn
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KeyChestForsworn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ArmorHead
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ArmorHead Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ArmorPauldrons
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ArmorPauldrons Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KeyLocationForsworn
;ALIAS PROPERTY TYPE LocationAlias
LocationAlias Property Alias_KeyLocationForsworn Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY DeadActor
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_DeadActor Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY ArmorSkirt
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_ArmorSkirt Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY KeyChestBandit
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_KeyChestBandit Auto
;END ALIAS PROPERTY

;BEGIN ALIAS PROPERTY Plans
;ALIAS PROPERTY TYPE ReferenceAlias
ReferenceAlias Property Alias_Plans Auto
;END ALIAS PROPERTY

;BEGIN FRAGMENT Fragment_12
Function Fragment_12()
;BEGIN CODE
ObjectReference journal = Alias_Journal.GetRef()
Actor deadActor = Alias_DeadActor.GetActorRef()
deadActor.AddItem(journal)

SetObjectiveFailed(200)
SetObjectiveDisplayed(300)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_10
Function Fragment_10()
;BEGIN CODE
ObjectReference keyForsworn = Alias_KeyForsworn.GetRef()
ObjectReference keyWarlock = Alias_KeyWarlock.GetRef()

ObjectReference keyChestForsworn = Alias_KeyChestForsworn.GetRef()
ObjectReference keyChestWarlock = Alias_KeyChestWarlock.GetRef()

keyChestForsworn.AddItem(keyForsworn)
keyChestWarlock.AddItem(keyWarlock)

ObjectReference armorChest = Alias_ArmorChest.GetRef()
armorChest.SetLockLevel(255)
armorChest.Lock()

ObjectReference armorBody = Alias_ArmorBody.GetRef()
ObjectReference armorHead = Alias_ArmorHead.GetRef()
ObjectReference armorFeet = Alias_ArmorFeet.GetRef()
ObjectReference armorHands = Alias_ArmorHands.GetRef()
ObjectReference armorSkirt = Alias_ArmorSkirt.GetRef()
ObjectReference armorPauldrons = Alias_ArmorPauldrons.GetRef()
ObjectReference armorCirclet = Alias_ArmorCirclet.GetRef()
ObjectReference armorShield = Alias_ArmorShield.GetRef()
ObjectReference armorLance = Alias_ArmorLance.GetRef()
ObjectReference armorSword = Alias_ArmorSword.GetRef()
ObjectReference plans = Alias_Plans.GetRef()

armorChest.AddItem(armorBody)
armorChest.AddItem(armorHead)
armorChest.AddItem(armorFeet)
armorChest.AddItem(armorHands)
armorChest.AddItem(armorCirclet)
armorChest.AddItem(armorSkirt)
armorChest.AddItem(armorPauldrons)
armorChest.AddItem(armorShield)
armorChest.AddItem(armorLance)
armorChest.AddItem(armorSword)
armorChest.AddItem(plans)

ksws02_plans_quest.Start()

SetObjectiveCompleted(300)
SetObjectiveDisplayed(400)
SetObjectiveDisplayed(401)
SetObjectiveDisplayed(402)

UpdateKeys()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_13
Function Fragment_13()
;BEGIN CODE
SetObjectiveCompleted(400)
SetObjectiveCompleted(401)
SetObjectiveCompleted(402)
SetObjectiveDisplayed(500)

ObjectReference armorChest = Alias_ArmorChest.GetRef()
armorChest.BlockActivation()

UpdateArmor()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_14
Function Fragment_14()
;BEGIN CODE
CompleteAllObjectives()
Stop()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_15
Function Fragment_15()
;BEGIN CODE
Actor deadActor = Alias_DeadActor.GetActorRef()
deadActor.Delete()
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_6
Function Fragment_6()
;BEGIN CODE
ObjectReference note = Alias_Note.GetRef()
playerRef.AddItem(Note)
SetObjectiveDisplayed(100)
;END CODE
EndFunction
;END FRAGMENT

;BEGIN FRAGMENT Fragment_3
Function Fragment_3()
;BEGIN CODE
Actor deadActor = Alias_DeadActor.GetActorRef()
ObjectReference deadActorMarker = Alias_DeadActorMarker.GetRef()
deadActor.MoveTo(deadActorMarker)
RegisterForLOS(playerRef, deadActor)

ObjectReference keyBandit = Alias_KeyBandit.GetRef()
ObjectReference keyChestBandit = Alias_KeyChestBandit.GetRef()
keyChestBandit.AddItem(keyBandit)

SetObjectiveCompleted(100)
SetObjectiveDisplayed(200)
;END CODE
EndFunction
;END FRAGMENT

;END FRAGMENT CODE - Do not edit anything between this and the begin comment

function UpdateKeys()
	int keyCount = 0
	if playerRef.GetItemCount(Alias_KeyBandit.GetRef())
		SetObjectiveCompleted(400)
		keyCount += 1
	endIf
	if playerRef.GetItemCount(Alias_KeyForsworn.GetRef())
		SetObjectiveCompleted(401)
		keyCount += 1
	endIf
	if playerRef.GetItemCount(Alias_KeyWarlock.GetRef())
		SetObjectiveCompleted(402)
		keyCount += 1
	endIf

	if keyCount == 3
		SetStage(500)
	endIf
endFunction

function UpdateArmor()
	if (\
		playerRef.GetItemCount(Alias_ArmorHead.GetRef()) && \
		playerRef.GetItemCount(Alias_ArmorBody.GetRef()) && \
		playerRef.GetItemCount(Alias_ArmorHands.GetRef()) && \
		playerRef.GetItemCount(Alias_ArmorFeet.GetRef()) && \
		playerRef.GetItemCount(Alias_ArmorPauldrons.GetRef()) && \
		playerRef.GetItemCount(Alias_ArmorSkirt.GetRef()) && \
		playerRef.GetItemCount(Alias_ArmorCirclet.GetRef()) && \
		playerRef.GetItemCount(Alias_ArmorShield.GetRef()) && \
		playerRef.GetItemCount(Alias_ArmorLance.GetRef()) && \
		playerRef.GetItemCount(Alias_ArmorSword.GetRef()) && \
		playerRef.GetItemCount(Alias_Plans.GetRef()) \
	)
		SetStage(600)
	endIf
endFunction

event OnGainLOS(Actor akViewer, ObjectReference akTarget)
	if akViewer == playerRef && akTarget == Alias_DeadActor.GetRef()
		SetStage(300)
	endIf
endEvent

Actor Property playerRef Auto
Quest Property ksws02_plans_quest Auto
