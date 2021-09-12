git submodule update --init --recursive

./gradlew clean setupCauldron
./gradlew --parallel jar --parallel packageBundle --stacktrace

mkdir -p "${WORKSPACE}/release"
cp "${WORKSPACE}/build/distributions/Thermos-1.7.10-1614.UNOFFICIAL-server.jar" "${WORKSPACE}/release/Thermos-1.7.10-1614-server.jar"

cd "${WORKSPACE}/build/distributions/"
unzip Thermos*bundle*zip
rm -r bin/unknown
mv bin libraries
zip -r libraries.zip libraries

cd "${WORKSPACE}"
cp "${WORKSPACE}/build/distributions/libraries.zip" "${WORKSPACE}/release/libraries.zip"
