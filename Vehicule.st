Object subclass: Vehicule [
    | roues roule |

	<comment: 'Je suis une classe qui représente un véhicule'>

    couleur := 'rouge'.

    Vehicule class >> new [
        | r |
        "Construction de l'instance"
        <category: 'initialize'>

        r := super new.
        ^r init.
    ]

	printOn: stream [
   		<category: 'printing'>
      	super printOn: stream.
      	stream
	    	nextPutAll: ' et J''ai ';
		    nextPutAll: self roues asString;
		    nextPutAll: ' roues';
	      nextPut: Character cr;
		    nextPut: Character lf.
    ]

    init [
        "constructeur"
        <category: 'initialize'>

        self roues: 0.
        roule := false.
    ]

    roues: nbrRoues [
        "une méthode pour fixer le nombre de roues"
        <category: 'accessing'>

        roues := nbrRoues.
    ]

    roues [
        "une méthode pour obtenir le nombre de roues"
        <category: 'accessing'>
        
        ^roues
    ]

    demarre [
        "une méthode pour démarrer le véhicule"
        <category: 'action'>

        self subclassResponsibility
    ]

    arret [
        "une méthode pour arrêter le véhicule"
        <category: 'action'>

        self subclassResponsibility
    ]
]

Vehicule subclass: Voiture [
    init [
        "constructeur"
        <category: 'initialize'>
 
        super init.
        self roues: 4.
    ]

    demarre [
        roule := true
    ]

    arret [
        roule := false
    ]
]


Voiture extend [
	| phares |

	allume [
		phares := true
	]
]
