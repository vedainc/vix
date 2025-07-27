SHELL := bash
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules
NAME = vix

LISP ?= sbcl
SBCL_FLAGS = --load
LISPWORKS_FLAGS = -build
LISP_FLAGS =

ifeq ($(LISP),lispworks)
  LISP_FLAGS=$(LISPWORKS_FLAGS)
else
  LISP_FLAGS=$(SBCL_FLAGS)
endif

.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:

.PHONY: all $(NAME) install clean

all: $(NAME)

$(NAME):
	@$(LISP) $(LISP_FLAGS) src/build.lisp

install: $(NAME)
	@mkdir -p ${HOME}/bin
	@cp -f vix ${HOME}/bin

clean:
	@rm -f $(NAME)
