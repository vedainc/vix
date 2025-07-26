;;;; -*- mode: lisp; syntax: common-lisp; base: 10; -*-
;;;; config.lisp --- config the Nix settings

(uiop:define-package #:vix/src/config
  (:use #:cl
        #:marie
        #:vix/src/core))

(in-package #:vix/src/config)

(define-command config show ()
  "show the Nix configuration or the value of a specific setting"
  ""
  nil
  t
  nil
  "Show configuration"
  "cfg show")

(define-command config check ()
  "check your system for potential problems"
  ""
  nil
  t
  nil
  "Check for problems"
  "cfg k")

(define-command nil config (cfg)
  "manage the Nix settings" "<command>"
  nil
  #'print-usage
  (show check))
