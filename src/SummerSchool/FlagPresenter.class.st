Class {
	#name : #FlagPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'title',
		'name',
		'date',
		'table',
		'ok',
		'cancel',
		'countries'
	],
	#category : #SummerSchool
}

{ #category : #'as yet unclassified' }
FlagPresenter >> connectPresenters [ 
  ok action: [ self onOK ].
  cancel action: [ self onCancel ].
  
  title whenSelectedItemChangedDo: [ :item |
    self onTitleChanged: item ].
  
  name whenSelectedItemChangedDo: [ :item |
    self onNameChanged: item ].
]

{ #category : #'as yet unclassified' }
FlagPresenter >> defaultLayout [
  ^ SpBoxLayout newLeftToRight
  
      add: (SpBoxLayout newTopToBottom
        add: #title height: self class toolbarHeight ;
        add: #date height: self class toolbarHeight ;
        add: #details) ;

      add: (SpBoxLayout newTopToBottom
        add: #name height: self class toolbarHeight ;
        add: #table ;
        add: (SpBoxLayout newLeftToRight
          add: #ok ;
          add: #cancel)) ;

      yourself
]

{ #category : #'as yet unclassified' }
FlagPresenter >> initialize [
	super initialize.
	self loadCountries.
]

{ #category : #'as yet unclassified' }
FlagPresenter >> intializePresenters [
	title := self newDropList.
	name := self newDropList.
	date := self newText.
	table := self newTable.
	ok := self newButton
		label: 'Ok'.
	cancel := self newButton
		label: 'Cancel'.
		
	
]

{ #category : #'as yet unclassified' }
FlagPresenter >> loadCountries [
	countries := ((XMLDOMParser parse: 'world.svg' asFileReference) allElementsNamed: 'path')
		collect: [ :path | MyCountry new fromXML: path ].
]

{ #category : #'as yet unclassified' }
FlagPresenter >> onCancel [


]

{ #category : #'as yet unclassified' }
FlagPresenter >> onNameChanged: item [
]

{ #category : #'as yet unclassified' }
FlagPresenter >> onOK [


]

{ #category : #'as yet unclassified' }
FlagPresenter >> onTitleChanged: item [
]
