#!/bin/bash

while true; do
    read -p "Begin Mobile Environment Setup ...? " yn
    case $yn in
        [Yy]* ) make beginInstallation; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

function beginInstallation() {
    echo "Beginning Installation"
    
    if ! type "brew" > /dev/null; then
        echo "Homebrew not found, installing now"
        /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    fi

    while true; do
        read -p "Do you want to install VisualStudio Code? " yn
        case $yn in
            [Yy]* ) installVSCode; break;;
            [Nn]* ) exit;;
            * ) echo "Please answer yes or no.";;
        esac
    done

    while true; do
        read -p "Do you want to install Android Studio? " yn
        case $yn in
            [Yy]* ) installAndroidStudio; break;;
            [Nn]* ) exit;;
            * ) echo "Please answer yes or no.";;
        esac
    done

    fi ! brew info git &>/dev/null; then
        echo "Installing Git"
        brew install git
    fi

    installFlutterEnv
}
function installVSCode() {
    fi ! brew info visual-studio-code &>/dev/null; then
        echo "Installing Visual Studio Code"
        brew install --cask visual-studio-code
    fi
}

function installAndroidStudio() {
    fi ! brew info android-studio &>/dev/null; then
        echo "Installing Android Studio"
        brew install --cask android-studio
    fi

    installAndroidEnv
}

function installFlutterEnv(){

    fi ! brew info flutter &>/dev/null; then
        echo "Installing Flutter"
        brew install --cask flutter
    fi
}

function installAndroidEnv(){

    fi ! brew info openjdk &>/dev/null; then
        echo "Installing OpenJDK"
        brew install --cask openjdk
        echo 'export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"' >> ~/.zshrc
    fi

    echo "Updating Android"

    if ! brew info android-sdk &>/dev/null; then
        brew install --cask android-sdk
        tools/bin/sdkmanager "platform-tools" "platforms;android-32" "extras;google;m2repository" "extras;android;m2repository"
        tools/bin/sdkmanager --licenses
        sdkmanager --install "ndk"
        sdkmanager --update

    fi

    echo "Updating Shell"

    echo "export ANDROID_HOME=$HOME/Library/Android/sdk" >> ~/.zshrc
    echo "export PATH=$PATH:$ANDROID_HOME/emulator" >> ~/.zshrc
    echo "export PATH=$PATH:$ANDROID_HOME/tools" >> ~/.zshrc
    echo "export PATH=$PATH:$ANDROID_HOME/tools/bin" >> ~/.zshrc
    echo "export PATH=$PATH:$ANDROID_HOME/platform-tools" >> ~/.zshrc

}

function installIOSEnv(){

    fi ! brew info cocoapods &>/dev/null; then
        echo "Installing CocoaPods"
        brew install cocoapods
    fi

    echo "Updating XCode"

    xcode-select --install
}








