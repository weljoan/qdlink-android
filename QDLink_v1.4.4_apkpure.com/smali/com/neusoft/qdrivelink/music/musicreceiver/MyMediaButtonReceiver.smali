.class public Lcom/neusoft/qdrivelink/music/musicreceiver/MyMediaButtonReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MyMediaButtonReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "mymediabuttonreceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KEYCODE_MEDIA_PLAY:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "mymediabuttonreceiver"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/KeyEvent;

    .line 19
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/view/KeyEvent;

    .line 20
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const-string p1, "action not up"

    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keycode :"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x7f

    if-ne p2, p1, :cond_1

    const-string p1, "KEYCODE_MEDIA_PLAY1 KEYCODE_MEDIA_PAUSE"

    .line 29
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    if-eqz p1, :cond_6

    .line 31
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->pauseMusic()V

    goto :goto_0

    :cond_1
    const/16 p2, 0x7e

    if-ne p2, p1, :cond_2

    const-string p1, "KEYCODE_MEDIA_PLAY2 KEYCODE_MEDIA_PLAY"

    .line 33
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    if-eqz p1, :cond_6

    .line 35
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->startMusice()V

    goto :goto_0

    :cond_2
    const/16 p2, 0x56

    if-ne p2, p1, :cond_3

    const-string p1, "KEYCODE_MEDIA_PLAY3 KEYCODE_MEDIA_STOP"

    .line 37
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/16 p2, 0x57

    const/4 v1, 0x0

    if-ne p2, p1, :cond_4

    const-string p1, "KEYCODE_MEDIA_PLAY4 KEYCODE_MEDIA_NEXT"

    .line 39
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    sput v1, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->lastI:I

    .line 41
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    if-eqz p1, :cond_6

    .line 42
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->nextMusic()V

    goto :goto_0

    :cond_4
    const/16 p2, 0x58

    if-ne p2, p1, :cond_5

    const-string p1, "KEYCODE_MEDIA_PLAY5 KEYCODE_MEDIA_PREVIOUS"

    .line 44
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sput v1, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->lastI:I

    .line 46
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    if-eqz p1, :cond_6

    .line 47
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->preMusic()V

    goto :goto_0

    :cond_5
    const/16 p2, 0x55

    if-ne p2, p1, :cond_6

    const-string p1, "KEYCODE_MEDIA_PLAY6 KEYCODE_MEDIA_PLAY_PAUSE"

    .line 49
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_6
    :goto_0
    return-void
.end method
