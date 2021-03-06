#lang scribble/manual

@(require "doc-util/main.rkt")


@title{Dict lenses}

@defproc[(dict-ref-lens [key any/c]) lens?]{
  Returns a lens for viewing the value mapped to @racket[key] in a dict.
  @lens-examples[
    (define dict '((a . 1) (b . 2) (c . 3)))
    (lens-view (dict-ref-lens 'a) dict)
    (lens-set (dict-ref-lens 'a) dict 100)
]}
