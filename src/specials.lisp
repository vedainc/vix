;;;; -*- mode: lisp; syntax: common-lisp; base: 10; -*-
;;;; specials.lisp --- special variables

(uiop:define-package #:vix/src/specials
  (:use #:cl
        #:marie))

(in-package #:vix/src/specials)


;;; main variables

(defk +project-name+
  "vix"
  "The name of the project.")

(defk +project-version+
  "1.4.0"
  "The version number of the project.")

(defk +project-description+
  "a thin wrapper for interacting with the Nix CLI ecosystem."
  "The project description.")

(defk +exe+
  '("nix")
  "The name of the main command line program.")


;;; nix

(defv- *nix-skeleton-directory*
  (uiop:subpathname (asdf:system-source-directory (asdf:find-system :vix))
                    #P"nix/")
  "The location of the nix skeleton files.")

(def nix-skel-path (path)
  "Return a path from PATH relevant to the project directory."
  (uiop:subpathname *nix-skeleton-directory* path))

(defv *default-flake*
  "nixpkgs"
  "The name of the default flake to use.")
