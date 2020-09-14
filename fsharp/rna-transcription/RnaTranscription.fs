module RnaTranscription

let mapRna (nucleotide: char) = 
    match nucleotide with
    | 'G' -> 'C'
    | 'C' -> 'G'
    | 'T' -> 'A'
    | 'A' -> 'U'

let toRna (dna: string): string = String.map mapRna dna