# qdlink-android
# You do not have to go through the decompile/recompile process.
 You can directly download it from https://github.com/weljoan/qdlink-android/blob/master/dist/signed-QDLink_v1.4.4_apkpure.com.apk

---------------
 
 We use APK-tool to unpack the orignal APK file by
 You can get APK-tool from https://github.com/iBotPeaches/Apktool

 apktool.sh d QDLink.xxxxx.apk

 After decompile, you will get alot of smali code. The rest of the files are not useful to us. 
 we can ignore them and we are only interested on QdriveConnService.java file.
 The logic of the legal app and non-legal app are as

 ![alt this](https://github.com/weljoan/qdlink-android/blob/master/Code.png?raw=true)
 
 the application will call replyLegalChangeNew function with parameter 0 if the app is not legal.
 the application will call replyLegalChangeNew function with parameter 1 if the app is legal.
 we just need to make everything to have 1 as their parameter for app to be rendered like below.
 
 ![alt this](https://github.com/weljoan/qdlink-android/blob/master/Code%20after.png?raw=true)
 
 
 feel free to explore yourself and if you have any question, please create an issue. I will reply if i have time.
 :D
