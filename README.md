## Flutter demo splashscreen, using flutter_native_splash

Create separate native_splash.yaml

Create assets folder with prepared images

Run folowing command before starting the emulator / simulator

`dart run flutter_native_splash:create --path=native_splash.yaml`

## Assets Dimentions
## `iOS & Android 11 and below`
Logo:
- Resolution: 600x600px
- Scaled Resolution: 200x200 @3x
- Format: PNG

Background Image:
- Resolution: 1290x2796px
- Scaled Resolution: 430x932 @3x
- Format: PNG

Branding Image:
- Resolution: 750x750px
- Scaled Resolution: 250x250 @3x
- Format: PNG
- Padding: 100px top & bottom in image

## `Android 12 and above`
Logo with background (PNG):
- Dimentions: 768px circle inside 1152px square

Logo w/o background (PNG):
- Dimentions: 640px circle inside 960px square

Background Image:
- Not supported

Branding Image:
- Resolution: 600x240px
- Scaled Resolution: 200x80 @3x
- Format: PNG