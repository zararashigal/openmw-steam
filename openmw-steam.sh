#!/bin/bash

# Variables and checks.
COMPATPATH=$HOME/.steam/root/compatibilitytools.d/
echo ""
echo "Installing OpenMW into Steam Compatibility section..."

# Create the compatibility tools folder.
echo "Creating $COMPATPATH..."
if [ ! -d "$COMPATPATH" ]
	then mkdir ${COMPATPATH}
fi

echo "Creating $COMPATPATH/openmw"
if [ ! -d "$COMPATPATH/openmw" ]
	then mkdir ${COMPATPATH}/openmw
fi

# Link executable of OpenMW into it so we can access it.
echo "Linking binaries..."
if [ ! -f "$COMPATPATH/openmw/openmw" ]
	then ln -s /usr/bin/openmw ${COMPATPATH}/openmw/
fi

# Copy neccessary info and configs.
echo "Copying vdfs..."

if [ ! -f "$COMPATPATH/openmw/compatibilitytool.vdf" ]
	then cp -r compatibilitytool.vdf ${COMPATPATH}/openmw
fi

if [ ! -f "$COMPATPATH/openmw/toolmanifest.vdf" ]
        then cp -r toolmanifest.vdf ${COMPATPATH}/openmw
fi
echo ""
echo "Done! Select OpenMW as compatibility tool in your steam morrowind settings!!"
