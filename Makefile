#
# Copyright (C) 2017-2019 Canonical, Ltd.
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
#

VERSION=0.01.01

BINDIR=/usr/bin
CFLAGS += -Os -Wall -Werror -DVERSION='"$(VERSION)"'

#
# Pedantic flags
#
ifeq ($(PEDANTIC),1)
CFLAGS += -Wcast-qual -Wfloat-equal -Wmissing-declarations \
        -Wmissing-format-attribute -Wno-long-long -Wpacked \
        -Wredundant-decls -Wshadow -Wno-missing-field-initializers \
        -Wno-missing-braces -Wno-sign-compare -Wno-multichar
endif

eatpages: eatpages.o

.PHONEY: clean
clean:
	rm -f eatpages eatpages.o

.PHONEY: install
install:
	mkdir -p ${DESTDIR}${BINDIR}
	cp eatpages ${DESTDIR}${BINDIR}
