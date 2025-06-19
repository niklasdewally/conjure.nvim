" Vim syntax file
" Language:	Minion
" Maintainer:	Niklas Dewally

if exists('b:current_syntax')
    finish
endif

" minion file declaration
syntax match minionLanguage " *MINION 3 *$"

" sections of a minion file
syntax keyword minionSections contained 
            \ CONSTRAINTS
            \ TUPLELIST
            \ SHORTTUPLELIST
            \ SEARCH
            \ VARIABLES
            \ EOF

" section: e.g. **CONSTRAINTS**
syntax match minionSectionDecl ".*\*\*[A-Z]\+\*\*.*" contains=minionSections

syntax keyword minionVariableTypes 
            \ BOOL
            \ BOUND
            \ SPARSEBOUND
            \ DISCRETE

syntax keyword minionConstraints
            \ alldiff
            \ gacalldiff
            \ alldiffmatrix
            \ gcc
            \ gccweak
            \ occurrence 
            \ occurrenceleq
            \ occurrencegeq
            \ nvalueleq
            \ nvaluegeq
            \ element
            \ element_one
            \ watchelement_one
            \ watchelement
            \ watchelement_undefzero
            \ watchelement_one_undefzero
            \ difference
            \ eq
            \ minuseq
            \ diseq
            \ ineq
            \ watchless
            \ abs
            \ max
            \ min
            \ div
            \ div_undefzero
            \ modulo 
            \ mod_undefzero
            \ product
            \ pow
            \ sumleq
            \ sumgeq
            \ weightedsumleq
            \ weightedsumgeq
            \ litsumgeq
            \ table
            \ negativetable
            \ gacschema
            \ haggisgac
            \ mddc
            \ negativemddc
            \ lighttable
            \ shortctuplestr2
            \ shortstr2
            \ str2plus
            \ lexleq
            \ lexless
            \ lexleq[rv]
            \ lexless[rv]
            \ lexleq[quick]
            \ lexless[quick]
            \ reify
            \ reifyimply
            \ watchsumgeq
            \ watchsumleq
            \ hamming
            \ watchvecneq

syntax match minionConstraints 'refifyimply-quick'
syntax match minionConstraints 'watched-and'
syntax match minionConstraints 'watched-or'
syntax match minionConstraints 'w-inrange'
syntax match minionConstraints 'w-notinrange'
syntax match minionConstraints 'w-inset'
syntax match minionConstraints 'w-notinset'
syntax match minionConstraints 'w-literal'
syntax match minionConstraints 'w-notliteral'
syntax match minionConstraints 'w-inintervalset'

syntax keyword minionSearchCommands
            \ VARORDER
            \ SYMORDER
            \ VALORDER
            \ MINIMIZING
            \ MAXIMISING
            \ PRINT
            \ PRINT ALL
            \ PRINT NONE

syntax keyword minionAux AUX

syntax keyword minionSearchParams
            \ STATIC
            \ SDF
            \ SRF
            \ LDF
            \ ORIGINAL
            \ WDEG
            \ CONFLICT
            \ DOMOVERWDEG

syntax match minionComment "^ *#.*$"
            \ contains=@Spell       " Only check spelling in comments

" syntax match minionNumber "[,){<}>\[\] ]*[0-9]\+[,)}>{<\]\[ ]*" 

syntax match minionNumber "[0-9]..[0-9]"

syntax region minionAfterEOF matchgroup=minionEOF start="^ *\*\*EOF\*\*" end="\%$" 

highlight default link minionLanguage           Special
highlight default link minionSectionDecl        Special
highlight default link minionSections           Special 
highlight default link minionVariableTypes      Keyword 
highlight default link minionConstraints        Function
highlight default link minionSearchCommands     Keyword
highlight default link minionAux                Constant
highlight default link minionSearchParams       Constant
highlight default link minionComment            Comment
" highlight default link minionNumber             Number
highlight default link minionEOF                Special
highlight default link minionAfterEOF           Comment

