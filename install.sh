#!/bin/sh
echo "Copying service to user's services folder..."
if [ ! -d ~/Library/Services ]; then
    mkdir ~/Library/Services
fi
cp -r "Upload to YandexPhotos.workflow" ~/Library/Services/
echo "Copying authorizer to user's applications folder..."
cp -r "YPU Authorizer.app" ~/Applications/
echo "Updating services cache..."
/System/Library/CoreServices/pbs -flush
echo "Updating Launch Services database"
/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -r "~/Applications/YPU Authorizer.app"
echo "Installation complete"