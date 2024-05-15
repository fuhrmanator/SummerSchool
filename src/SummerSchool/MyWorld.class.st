Class {
	#name : #MyWorld,
	#superclass : #Object,
	#instVars : [
		'countries'
	],
	#category : #SummerSchool
}

{ #category : #accessing }
MyWorld >> countries [
	^ countries
]

{ #category : #'instance creation' }
MyWorld >> fromXML: fileString [
	countries := ((XMLDOMParser parse: fileString asFileReference) allElementsNamed: 'path')
		collect: [ :path | MyCountry new fromXML: path ] as: OrderedCollection.
]
