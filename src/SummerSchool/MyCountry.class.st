"
I'm an abstraction for a country in the context of drawing a map from an SVG file with all countries.
"
Class {
	#name : #MyCountry,
	#superclass : #Object,
	#instVars : [
		'd',
		'name',
		'id'
	],
	#category : #SummerSchool
}

{ #category : #accessing }
MyCountry >> d [

	^ d
]

{ #category : #accessing }
MyCountry >> d: anObject [

	d := anObject
]

{ #category : #'instance creation' }
MyCountry >> fromXML: anElement [
	d := anElement attributeAt: 'd'.
	name := anElement attributeAt: 'title'.
	id := anElement attributeAt: 'id'.
]

{ #category : #accessing }
MyCountry >> id [

	^ id
]

{ #category : #accessing }
MyCountry >> id: anObject [

	id := anObject
]

{ #category : #accessing }
MyCountry >> name [

	^ name
]

{ #category : #accessing }
MyCountry >> name: anObject [

	name := anObject
]
