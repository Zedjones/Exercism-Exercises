fun toRNA(dna: Char): Char = 
    when(dna) {
        'C' -> 'G'
        'G' -> 'C'
        'T' -> 'A'
        'A' -> 'U'
        else -> 'Z'
    }

fun isDNA(dna: Char): Boolean = "CTGA".contains(dna)

fun transcribeToRna(dna: String): String = 
    if (dna == "") ""
    else dna.map { toRNA(val) }.toString()