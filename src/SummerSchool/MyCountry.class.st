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

{ #category : #'instance creation' }
MyCountry >> fromXML: anElement [
	d := anElement d.
	name := anElement name.
	id := anElement id.
]
