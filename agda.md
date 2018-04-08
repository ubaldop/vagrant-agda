### Agda version 2.5.3

```bash
Usage: agda [OPTIONS...] [FILE]

  -V       --version                                   show version number
  -?       --help                                      show this help
  -I       --interactive                               start in interactive mode
           --interaction                               for use with the Emacs mode
           --compile-dir=DIR                           directory for compiler output (default: the project root)
           --vim                                       generate Vim highlighting files
           --latex                                     generate LaTeX with highlighted source code
           --latex-dir=DIR                             directory in which LaTeX files are placed (default: latex)
           --count-clusters                            count extended grapheme clusters when generating LaTeX (note that this flag has not been enabled in this build of Agda)
           --html                                      generate HTML files with highlighted source code
           --html-dir=DIR                              directory in which HTML files are placed (default: html)
           --css=URL                                   the CSS file used by the HTML files (can be relative)
           --dependency-graph=FILE                     generate a Dot file with a module dependency graph
           --ignore-interfaces                         ignore interface files (re-type check everything)
  -i DIR   --include-path=DIR                          look for imports in DIR
  -l LIB   --library=LIB                               use library LIB
           --library-file=FILE                         use FILE instead of the standard libraries file
           --no-libraries                              don't use any library files
           --no-default-libraries                      don't use default libraries
           --no-forcing                                disable the forcing optimisation
           --sharing                                   enable sharing and call-by-need evaluation (experimental) (default: OFF)
           --no-sharing                                disable sharing and call-by-need evaluation
           --caching                                   enable caching of typechecking (experimental) (default: OFF)
           --no-caching                                disable caching of typechecking
           --only-scope-checking                       only scope-check the top-level module, do not type-check it
           --show-implicit                             show implicit arguments when printing
           --show-irrelevant                           show irrelevant arguments when printing
  -v N     --verbose=N                                 set verbosity level to N
           --allow-unsolved-metas                      succeed and create interface file regardless of unsolved meta variables
           --no-positivity-check                       do not warn about not strictly positive data types
           --no-termination-check                      do not warn about possibly nonterminating code
           --termination-depth=N                       allow termination checker to count decrease/increase upto N (default N=1)
           --no-coverage-check                         the option has been removed
           --type-in-type                              ignore universe levels (this makes Agda inconsistent)
           --sized-types                               use sized types (default, inconsistent with `musical' coinduction)
           --no-sized-types                            disable sized types
           --injective-type-constructors               enable injective type constructors (makes Agda anti-classical and possibly inconsistent)
           --guardedness-preserving-type-constructors  treat type constructors as inductive constructors when checking productivity
           --no-universe-polymorphism                  disable universe polymorphism
           --universe-polymorphism                     enable universe polymorphism (default)
           --no-irrelevant-projections                 disable projection of irrelevant record fields
           --experimental-irrelevance                  enable potentially unsound irrelevance features (irrelevant levels, irrelevant data matching)
           --with-K                                    enable the K rule in pattern matching
           --without-K                                 disable the K rule in pattern matching
           --copatterns                                enable definitions by copattern matching (default)
           --no-copatterns                             disable definitions by copattern matching
           --no-pattern-matching                       disable pattern matching completely
           --exact-split                               require all clauses in a definition to hold as definitional equalities (unless marked CATCHALL)
           --no-exact-split                            do not require all clauses in a definition to hold as definitional equalities (default)
           --no-eta-equality                           default records to no-eta-equality
           --rewriting                                 enable declaration and use of REWRITE rules
           --postfix-projections                       make postfix projection notation the default
           --instance-search-depth=N                   set instance search depth to N (default: 500)
           --safe                                      disable postulates, unsafe OPTION pragmas and primTrustMe
  -W MODE  --warning=MODE                              set warning mode to MODE (available: warn, ignore, error. Default: warn)
           --no-main                                   do not treat the requested module as the main module of a program when compiling

GHC backend options
  -c  --compile, --ghc     compile program using the GHC backend
      --ghc-dont-call-ghc  don't call GHC, just write the GHC Haskell files.
      --ghc-flag=GHC-FLAG  give the flag GHC-FLAG to GHC

JS backend options
    --js  compile program using the JS backend
```
