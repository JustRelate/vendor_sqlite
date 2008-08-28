PROJECT_ROOT := $(shell cd ../..; pwd)

ifndef INSTALL_DIR
$(error INSTALL_DIR undefined)
endif
ifndef TARGET_OSTYPE
$(error TARGET_OSTYPE undefined)
endif
ifndef VERSION
$(error VERSION undefined)
endif

include $(PROJECT_ROOT)/Makefiles/Makefile.config

.PHONY: install
install:
ifeq ($(TARGET_OSTYPE),NT)
	@$(call sync,$(TARGET_OSTYPE)/$(VERSION)/lib,$(INSTALL_DIR)/sqlite)
endif
