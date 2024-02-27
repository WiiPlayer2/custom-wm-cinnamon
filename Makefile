#
# Global Settings
#

INSTALL = install
DESTDIR ?= /
PREFIX  ?= $(DESTDIR)/usr
WM_NAME = awesome

PATH_WM_CINNAMON = $(PREFIX)/bin/$(WM_NAME)-cinnamon
PATH_WM_CINNAMON_SESSION_BIN = $(PREFIX)/bin/cinnamon-session-$(WM_NAME)
PATH_WM_CINNAMON_DESKTOP = $(PREFIX)/share/applications/$(WM_NAME)-cinnamon.desktop
PATH_WM_CINNAMON_SESSION = $(PREFIX)/share/cinnamon-session/sessions/$(WM_NAME)-cinnamon.session
PATH_WM_CINNAMON_XSESSION = $(PREFIX)/share/xsessions/$(WM_NAME)-cinnamon.desktop

#
# Targets
#

all:
	@echo "Nothing to do"


install:
	$(INSTALL) -m0644 -D session/$(WM_NAME)-cinnamon-xsession.desktop $(PATH_WM_CINNAMON_XSESSION)
	$(INSTALL) -m0644 -D session/$(WM_NAME)-cinnamon.desktop $(PATH_WM_CINNAMON_DESKTOP)
	$(INSTALL) -m0644 -D session/$(WM_NAME)-cinnamon.session $(PATH_WM_CINNAMON_SESSION)
	$(INSTALL) -m0755 -D session/cinnamon-session-$(WM_NAME) $(PATH_WM_CINNAMON_SESSION_BIN)
	$(INSTALL) -m0755 -D session/$(WM_NAME)-cinnamon $(PATH_WM_CINNAMON)


uninstall:
	rm -f $(PATH_WM_CINNAMON)
	rm -f $(PATH_WM_CINNAMON_DESKTOP)
	rm -f $(PATH_WM_CINNAMON_SESSION)
	rm -f $(PATH_WM_CINNAMON_SESSION_BIN)
	rm -f $(PATH_WM_CINNAMON_XSESSION)


.PHONY: all install uninstall
