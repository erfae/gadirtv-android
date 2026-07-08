# Signing a release APK for the Play Store or long-lived sideloading

Building a properly signed release APK is optional — the default CI job
signs with Android's debug key, which works fine for sideloading a personal
IPTV client. Follow this only if you want to publish to Google Play or keep
the same signature across updates.

## Option A — Generate a keystore locally (recommended)

```bash
keytool -genkeypair \
  -alias gadirtv \
  -keyalg RSA -keysize 2048 -validity 10000 \
  -keystore gadirtv-release.jks \
  -storepass CHANGE_ME_STORE \
  -keypass  CHANGE_ME_KEY \
  -dname "CN=GadirTV, OU=Dev, O=Personal, L=Cadiz, S=Cadiz, C=ES"
```

Move `gadirtv-release.jks` to `gadirtv_android/android/gadirtv-release.jks`
and create `gadirtv_android/android/key.properties`:

```
storePassword=CHANGE_ME_STORE
keyPassword=CHANGE_ME_KEY
keyAlias=gadirtv
storeFile=gadirtv-release.jks
```

Both files are already listed in `.gitignore`. Push and the next CI run will
still use the debug key (safe fallback). To sign in CI, use option B.

## Option B — Sign in CI (GitHub Actions secrets)

Encode the keystore file as base64:

```bash
base64 -w0 gadirtv-release.jks > gadirtv-release.jks.b64
```

Copy the contents and add four GitHub repo secrets:

| Secret name       | Value                                            |
|-------------------|--------------------------------------------------|
| `KEYSTORE_B64`    | contents of `gadirtv-release.jks.b64`            |
| `KEYSTORE_PASS`   | your `storepass`                                 |
| `KEY_ALIAS`       | `gadirtv`                                        |
| `KEY_PASS`        | your `keypass`                                   |

Then extend `.github/workflows/build-apk.yml` (add before "Build RELEASE APK"):

```yaml
      - name: Decode keystore
        if: env.HAS_KEYSTORE == 'true'
        env:
          HAS_KEYSTORE: ${{ secrets.KEYSTORE_B64 != '' }}
        run: |
          echo "${{ secrets.KEYSTORE_B64 }}" | base64 -d > android/gadirtv-release.jks
          cat > android/key.properties <<EOF
          storePassword=${{ secrets.KEYSTORE_PASS }}
          keyPassword=${{ secrets.KEY_PASS }}
          keyAlias=${{ secrets.KEY_ALIAS }}
          storeFile=gadirtv-release.jks
          EOF
```

Never commit the `.jks` file or `key.properties` to the repository.
