Class {
	#name : #FlagPresenter,
	#superclass : #SpPresenter,
	#instVars : [
		'countries',
		'countryNameDropList',
		'code',
		'flag'
	],
	#category : #SummerSchool
}

{ #category : #'as yet unclassified' }
FlagPresenter >> connectPresenters [ 
  
  countryNameDropList whenSelectedItemChangedDo: [ :item |
    self onNameChanged: item ].
]

{ #category : #'as yet unclassified' }
FlagPresenter >> defaultLayout [
  ^ SpBoxLayout newLeftToRight
  
      add: (SpBoxLayout newTopToBottom
			add: (SpBoxLayout newLeftToRight
				add: #countryNameDropList height: self class toolbarHeight ;
				add: #code);
			add: #flag);
      yourself
]

{ #category : #'as yet unclassified' }
FlagPresenter >> initialize [
	super initialize.
	self loadCountries.

]

{ #category : #'as yet unclassified' }
FlagPresenter >> initializePresenters [
	super initializePresenters.
	countryNameDropList := self newDropList.
	countryNameDropList display: [ :item | item name ].
	code := self newText.
	flag := self newImage.
		
	
]

{ #category : #'as yet unclassified' }
FlagPresenter >> loadCountries [
	countries := ((XMLDOMParser parse: 'world.svg' asFileReference) allElementsNamed: 'path')
		collect: [ :path | MyCountry new fromXML: path ] as: OrderedCollection.
	countryNameDropList items: countries .
	
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
