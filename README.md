# bootstrap

MOUNTDIR=$(echo hdiutil mount jdk-7u51-macos-x64.dmg | tail -1 | awk '{$1=$2=""; print $0}' | xargs -0 echo) && sudo installer -pkg "${MOUNTDIR}/"*.pkg -target /


## download commandline tools
curl /path/to/commandlinetools.dmg



## install commandline tools

## download homebrew

mkdir /homebrew && curl -L https://github.com/Homebrew/homebrew/tarball/master | tar xz --strip 1 -C /homebrew

## install homebrew

1. get the dmg

curl -O http://git-osx-installer.googlecode.com/files/git-1.7.3.4-x86_64-leopard.dmg

2. mount it

hdiutil attach git-1.7.3.4-x86_64-leopard.dmg 

3. install the pkg

sudo installer -pkg /Volumes/Git 1.7.3.4 x86_64 Leopard/git-1.7.3.4-x86_64-leopard.pkg -target /usr/local/

4. unmount it

hdiutil detach /Volumes/Git 1.7.3.4 x86_64 Leopard/

5. cleanup

rm -rf git-1.7.3.4-x86_64-leopard.dmg