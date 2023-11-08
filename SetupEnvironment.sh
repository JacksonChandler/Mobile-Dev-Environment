#!/bin/bash

while true; do
    read -p "Begin Mobile Environment Setup ...? " yn
    case $yn in
        [Yy]* ) make install; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

beginInstallation() {
    echo "Beginning Installation"
    
    if ! type "brew" > /dev/null; then
        echo "Homebrew not found, installing now"
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    fi ! brew info visual-studio-code &>/dev/null; then
        echo "Installing Visual Studio Code"
        brew install --cask visual-studio-code
    fi

    fi ! brew info android-studio &>/dev/null; then
        echo "Installing Android Studio"
        brew install --cask android-studio
    fi

    fi ! brew info git &>/dev/null; then
        echo "Installing Git"
        brew install git
    fi

}

installFlutterEnv(){

}

installReactNativeEnv(){

}

installAndroidEnv(){

    fi ! brew info adoptopenjdk/openjdk/adoptopenjdk11 &>/dev/null; then
        echo "Installing AdoptOpenJDK"
        brew install --cask adoptopenjdk/openjdk/adoptopenjdk11
    fi

    echo "Updating Android"

    if ! brew info android-sdk &>/dev/null; then
        brew install --cask android-sdk
        tools/bin/sdkmanager "platform-tools" "platforms;android-32" "extras;google;m2repository" "extras;android;m2repository"
        tools/bin/sdkmanager --licenses
        sdkmanager --install "ndk;21.3.6528147" --channel=3
        sdkmanager --install "cmake;10.24988404"
        sdkmanager --update

    fi

    echo "Updating Shell"

    echo "export ANDROID_HOME=$HOME/Library/Android/sdk" >> ~/.zshrc
    echo "export PATH=$PATH:$ANDROID_HOME/emulator" >> ~/.zshrc
    echo "export PATH=$PATH:$ANDROID_HOME/tools" >> ~/.zshrc
    echo "export PATH=$PATH:$ANDROID_HOME/tools/bin" >> ~/.zshrc
    echo "export PATH=$PATH:$ANDROID_HOME/platform-tools" >> ~/.zshrc

}

installIOSEnv(){

    fi ! brew info cocoapods &>/dev/null; then
        echo "Installing CocoaPods"
        brew install cocoapods
    fi

    echo "Updating XCode"

    xcode-select --install
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
    source ~/.zshrc
    nvm install v14.15.0
    nvm use v14.15.0
    npm i -g corepack
}

installIonicEnv(){

}

fi ! brew info node &>/dev/null; then
    echo "Installing Node"
    brew install node
fi

fi ! brew info watchman &>/dev/null; then
    echo "Installing Watchman"
    brew install watchman
fi

fi ! brew info yarn &>/dev/null; then
    echo "Installing Yarn"
    brew install yarn
fi

fi ! brew info nvm &>/dev/null; then
    echo "Installing NVM"
    brew install nvm
fi

fi ! brew info corepack &>/dev/null; then
    echo "Installing Corepack"
    brew install corepack
fi

fi ! brew info npx &>/dev/null; then
    echo "Installing NPX"
    brew install npx
fi

package='npx'
if [ `npm list -g | grep -c $package` -eq 0 ]; then
    npm install $package --no-shrinkwrap
fi




