.class public Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;
.super Ljava/lang/Object;
.source "FormatJson.java"


# static fields
.field public static final AppDataMirror:Ljava/lang/String; = "Mirror"

.field public static final AppDataMusic:Ljava/lang/String; = "Music"

.field public static final AppID:Ljava/lang/String; = "AppID"

.field public static final FunctionID:Ljava/lang/String; = "FunctionID"

.field public static final HEARTBEAT:Ljava/lang/String; = "HEARTBEAT"

.field public static final RECEIVE_BT_ADDR:Ljava/lang/String; = "BT_ADDR"

.field public static final RECEIVE_CAR_INFO:Ljava/lang/String; = "CAR_INFO"

.field public static final RECEIVE_DISCONNECT_REQ:Ljava/lang/String; = "DISCONNECT_REQ"

.field public static final RECEIVE_GO_IN_LINK_APP:Ljava/lang/String; = "GO_IN_LINK_APP"

.field public static final RECEIVE_KEY_FRAME_REQ:Ljava/lang/String; = "KEY_FRAME_REQ"

.field public static final RECEIVE_LAND_MODE_REQ:Ljava/lang/String; = "LAND_MODE_REQ"

.field public static final RECEIVE_LOCK_SCREEN_REQ:Ljava/lang/String; = "LOCK_SCREEN_REQ"

.field public static final RECEIVE_MUTECONTROL:Ljava/lang/String; = "MuteControl"

.field public static final RECEIVE_NEXT:Ljava/lang/String; = "Next"

.field public static final RECEIVE_PLAYCONTROL:Ljava/lang/String; = "PlayControl"

.field public static final RECEIVE_PLAYCONTROL_PAUSE:Ljava/lang/String; = "PlayControlPause"

.field public static final RECEIVE_PLAYCONTROL_PLAY:Ljava/lang/String; = "PlayControlPlay"

.field public static final RECEIVE_PREV:Ljava/lang/String; = "Prev"

.field public static final RECEIVE_VIDEO_ARGS:Ljava/lang/String; = "VIDEO_ARGS"

.field public static final RECEIVE_VIDEO_CTRL:Ljava/lang/String; = "VIDEO_CTRL"

.field public static final RECEIVE_VIDEO_SUP_REQ:Ljava/lang/String; = "VIDEO_SUP_REQ"

.field public static final REPLY_BT_RESULT:Ljava/lang/String; = "BT_RESULT"

.field public static final REPLY_CAR_APP_BACKGROUND:Ljava/lang/String; = "CAR_APP_BACKGROUND"

.field public static final REPLY_CAR_APP_FOREGROUND:Ljava/lang/String; = "CAR_APP_FOREGROUND"

.field public static final REPLY_DISCONNECT_RSP:Ljava/lang/String; = "DISCONNECT_RSP"

.field public static final REPLY_LAND_MODE_RSP:Ljava/lang/String; = "LAND_MODE_RSP"

.field public static final REPLY_MUTESTATE:Ljava/lang/String; = "MuteState"

.field public static final REPLY_PHONE_INFO:Ljava/lang/String; = "PHONE_INFO"

.field public static final REPLY_PLAYSTATE:Ljava/lang/String; = "PlayState"

.field public static final REPLY_SPEECH_ARGS:Ljava/lang/String; = "SPEECH_ARGS"

.field public static final REPLY_SPEECH_CTRL:Ljava/lang/String; = "SPEECH_CTRL"

.field public static final REPLY_UPDATE_NOTIFY:Ljava/lang/String; = "UPDATE_NOTIFY"

.field public static final REPLY_UPDATE_PKG_REQ:Ljava/lang/String; = "UPDATE_PKG_REQ"

.field public static final REPLY_VIDEO_SUP_RSP:Ljava/lang/String; = "VIDEO_SUP_RSP"

.field public static final WhitelistAppOn:Ljava/lang/String; = "WhitelistAppOn"

.field private static final a:Ljava/lang/String; = "CMD"

.field private static final b:Ljava/lang/String; = "PARA"

.field private static c:Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 552
    :try_start_0
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "get"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 554
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/Object;

    .line 555
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;
    .locals 1

    .line 251
    sget-object v0, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->c:Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    if-nez v0, :cond_0

    .line 252
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;-><init>()V

    sput-object v0, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->c:Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    .line 254
    :cond_0
    sget-object v0, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->c:Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    return-object v0
.end method


# virtual methods
.method public receiveBluetoothAddrPara(Ljava/lang/String;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BluetoothAddrPara;
    .locals 2

    .line 503
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BluetoothAddrPara;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BluetoothAddrPara;-><init>()V

    .line 505
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "PARA"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "BluetoothAddr"

    .line 506
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BluetoothAddrPara;->setBluetoothAddr(Ljava/lang/String;)V

    const-string v1, "BluetoothStatus"

    .line 507
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BluetoothAddrPara;->setBluetoothStatus(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 509
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public receiveCarInfo(Ljava/lang/String;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;
    .locals 2

    .line 298
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;-><init>()V

    .line 300
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "PARA"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Version"

    .line 301
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->setVersion(Ljava/lang/String;)V

    const-string v1, "CarType"

    .line 302
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->setCarType(Ljava/lang/String;)V

    const-string v1, "Platform"

    .line 303
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->setPlatform(I)V

    const-string v1, "PlatformVersion"

    .line 304
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->setPlatformVersion(Ljava/lang/String;)V

    const-string v1, "CarWidth"

    .line 305
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->setCarWidth(I)V

    const-string v1, "CarHeight"

    .line 306
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->setCarHeight(I)V

    const-string v1, "CarFactory"

    .line 307
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->setCarFactory(Ljava/lang/String;)V

    const-string v1, "HUFactory"

    .line 308
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->setHUFactory(Ljava/lang/String;)V

    const-string v1, "MirrorTypeReq"

    .line 309
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->setMirrorTypeReq(I)V

    const-string v1, "CarFeature"

    .line 310
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->setCarFeature(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 312
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public receiveCmdMessage(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 266
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "CMD"

    .line 267
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 269
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public receiveKeyEventPara(Ljava/lang/String;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEvent;
    .locals 6

    .line 521
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEvent;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEvent;-><init>()V

    .line 522
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 524
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "ACTION"

    .line 525
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEvent;->setACTION(I)V

    const-string p1, "FINGER_COUNT"

    .line 526
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEvent;->setFINGER_COUNT(I)V

    const-string p1, "FINGERS"

    .line 527
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    .line 528
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 529
    new-instance v3, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEventPara;

    invoke-direct {v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEventPara;-><init>()V

    .line 530
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "FingerAction"

    .line 531
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEventPara;->setFingerAction(I)V

    const-string v5, "x"

    .line 532
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEventPara;->setX(I)V

    const-string v5, "y"

    .line 533
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEventPara;->setY(I)V

    .line 534
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 536
    :cond_0
    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEvent;->setFINGERS(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 538
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method public receiveLandModeReqPara(Ljava/lang/String;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeReqPara;
    .locals 2

    .line 485
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeReqPara;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeReqPara;-><init>()V

    .line 487
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "PARA"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Orientation"

    .line 488
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeReqPara;->setOrientation(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 490
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public receiveMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 283
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 284
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 286
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public receiveUpdateNotify(Ljava/lang/String;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/UpdateNotifyPara;
    .locals 2

    .line 404
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/UpdateNotifyPara;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/UpdateNotifyPara;-><init>()V

    .line 406
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "PARA"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "UpdateStatus"

    .line 407
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/UpdateNotifyPara;->setUpdateStatus(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 409
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public receiveVideoArgsPara(Ljava/lang/String;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;
    .locals 2

    .line 423
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;-><init>()V

    .line 425
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "PARA"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Width"

    .line 426
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->setWidth(I)V

    const-string v1, "Height"

    .line 427
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->setHeight(I)V

    const-string v1, "EncodingType"

    .line 428
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->setEncodingType(I)V

    const-string v1, "FrameRate"

    .line 429
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->setFrameRate(I)V

    const-string v1, "BitRate"

    .line 430
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->setBitRate(I)V

    const-string v1, "FrameInterval"

    .line 431
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->setFrameInterval(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 433
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public receiveVideoControlPara(Ljava/lang/String;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoControlPara;
    .locals 2

    .line 467
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoControlPara;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoControlPara;-><init>()V

    .line 469
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "PARA"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "PlayStatus"

    .line 470
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoControlPara;->setPlayStatus(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 472
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public receiveVideoSupportReqPara(Ljava/lang/String;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoSupportReqPara;
    .locals 2

    .line 447
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoSupportReqPara;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoSupportReqPara;-><init>()V

    .line 449
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "PARA"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "VideoFormat"

    .line 450
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoSupportReqPara;->setVideoFormat(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 452
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public replyAppDataMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 7

    const-string v0, "FunctionID"

    const-string v1, "AppID"

    if-eqz p3, :cond_2

    .line 367
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 368
    array-length v3, v2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 369
    :goto_0
    array-length v6, v2

    if-ge v5, v6, :cond_0

    .line 370
    aget-object v6, v2, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 373
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 375
    :goto_1
    array-length v5, v3

    if-ge v4, v5, :cond_1

    .line 376
    aget-object v5, v3, v4

    aget-object v6, v3, v4

    invoke-static {v6, p3}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 379
    :cond_1
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 380
    invoke-interface {p3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "Para"

    .line 382
    invoke-interface {p3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 384
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, ""

    goto :goto_2

    .line 387
    :cond_2
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 388
    invoke-interface {p3, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 390
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 391
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public replyCarMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 6

    const-string v0, "CMD"

    if-eqz p2, :cond_2

    .line 328
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 329
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 330
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 331
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 334
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 336
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_1

    .line 337
    aget-object v4, v2, v3

    aget-object v5, v2, v3

    invoke-static {v5, p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 340
    :cond_1
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 341
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "PARA"

    .line 342
    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 344
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, ""

    goto :goto_2

    .line 347
    :cond_2
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 348
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 350
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method
