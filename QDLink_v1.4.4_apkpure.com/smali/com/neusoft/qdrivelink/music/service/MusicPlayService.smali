.class public Lcom/neusoft/qdrivelink/music/service/MusicPlayService;
.super Landroid/app/Service;
.source "MusicPlayService.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;
    }
.end annotation


# static fields
.field public static MAX_STR_LEN:I = 0x1e


# instance fields
.field private audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private audioManager:Landroid/media/AudioManager;

.field private br:I

.field private currentAlbumName:Ljava/lang/String;

.field private currentPlayIndex:I

.field public currentPlaySuccess:I

.field private currentPlayType:I

.field private currentStatus:I

.field public isPlayMusic:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private myPlayer:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

.field myRemoteControlClient:Landroid/media/RemoteControlClient;

.field public playListRefrsh:Lcom/neusoft/qdrivelink/music/service/PlayListRefrsh;

.field public playMessage:Lcom/neusoft/qdrivelink/music/service/PlayMessage;

.field private playMode:I

.field public playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

.field public playState:Lcom/neusoft/qdrivelink/music/service/PlayState;

.field private random:Ljava/util/Random;

.field rec:Landroid/content/ComponentName;

.field public seekChanged:Lcom/neusoft/qdrivelink/music/service/SeekChanged;

.field private telPauseFlag:Z

.field private wangYiSDK:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 36
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, -0x1

    .line 41
    iput v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayType:I

    .line 42
    iput v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    const-string v1, "albumauto"

    .line 43
    iput-object v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentAlbumName:Ljava/lang/String;

    const v1, 0x1f400

    .line 44
    iput v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->br:I

    const/4 v1, 0x0

    .line 45
    iput v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playMode:I

    const/4 v2, 0x0

    .line 47
    iput-object v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playMessage:Lcom/neusoft/qdrivelink/music/service/PlayMessage;

    .line 48
    iput-object v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->seekChanged:Lcom/neusoft/qdrivelink/music/service/SeekChanged;

    .line 49
    iput-object v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    .line 50
    iput-object v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playState:Lcom/neusoft/qdrivelink/music/service/PlayState;

    .line 51
    iput-object v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playListRefrsh:Lcom/neusoft/qdrivelink/music/service/PlayListRefrsh;

    .line 53
    iput v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    .line 54
    iput v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlaySuccess:I

    .line 111
    iput v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentStatus:I

    .line 113
    new-instance v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$1;-><init>(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 133
    iput-boolean v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->telPauseFlag:Z

    .line 159
    new-instance v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;-><init>(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    return-void
.end method

.method private abandonAudioFocus()V
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->audioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 260
    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    const-string v0, "textwwwww"

    const-string v1, "RemoteControlClient.PLAYSTATE_PAUSED222"

    .line 261
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->rec:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 264
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->callStateRinging()V

    return-void
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->callStateIdle()V

    return-void
.end method

.method static synthetic access$1000(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Z
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->requestAudioFocus()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1102(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentStatus:I

    return p0
.end method

.method static synthetic access$202(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myPlayer:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    return-object p0
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->abandonAudioFocus()V

    return-void
.end method

.method static synthetic access$500(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayType:I

    return p0
.end method

.method static synthetic access$502(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayType:I

    return p1
.end method

.method static synthetic access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    return p0
.end method

.method static synthetic access$602(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentAlbumName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$702(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentAlbumName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->br:I

    return p0
.end method

.method static synthetic access$900(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->wangYiSDK:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    return-object p0
.end method

.method private callStateIdle()V
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callStateIdle getIsPlayMusic():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getIsPlayMusic()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",telPauseFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->telPauseFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textwwwww"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myPlayer:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->telPauseFlag:Z

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->start()Z

    :cond_0
    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->telPauseFlag:Z

    return-void
.end method

.method private callStateRinging()V
    .locals 3

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callStateRinging getIsPlayMusic():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getIsPlayMusic()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textwwwww"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myPlayer:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getIsPlayMusic()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->telPauseFlag:Z

    .line 149
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myPlayer:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->pause()Z

    .line 150
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 151
    invoke-virtual {v0, v2}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    const-string v0, "callStateRinging RemoteControlClient.PLAYSTATE_PAUSED4444"

    .line 152
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static getLocalMusicData(Landroid/content/Context;)V
    .locals 8

    .line 921
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 922
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p0, -0x1

    const/4 v7, 0x0

    .line 925
    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "title_key"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    .line 940
    sput-object v7, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->localMusicList:Ljava/util/List;

    .line 941
    sput-object v7, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->audioItems:Ljava/util/List;

    .line 942
    sput p0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->localCountSur:I

    return-void

    .line 945
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 946
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mime_type"

    .line 947
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 949
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 950
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "audio/"

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 951
    new-instance v2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-direct {v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;-><init>()V

    const-string v3, "duration"

    .line 953
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setTotalTime(I)V

    .line 954
    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getTotalTime()I

    move-result v3

    const v4, 0x1d4c0

    if-le v3, v4, :cond_1

    const-string v3, "_data"

    .line 957
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, ".awb"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 958
    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getTotalTime()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setDuration(J)V

    const-string v4, "_id"

    .line 959
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setId(J)V

    .line 960
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setListenFile(Ljava/lang/String;)V

    .line 961
    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getListenFile()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setPlayurl(Ljava/lang/String;)V

    const-string v3, "title"

    .line 962
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->MAX_STR_LEN:I

    invoke-static {v3, v4}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setSongName(Ljava/lang/String;)V

    const-string v3, "album"

    .line 963
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->MAX_STR_LEN:I

    invoke-static {v3, v4}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setAlbumName(Ljava/lang/String;)V

    const-string v3, "artist"

    .line 964
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->MAX_STR_LEN:I

    invoke-static {v3, v4}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setArtistName(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 965
    invoke-virtual {v2, v3}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setPlayType(I)V

    .line 978
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 986
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 987
    sput-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->localMusicList:Ljava/util/List;

    .line 988
    sput-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->audioItems:Ljava/util/List;

    .line 989
    sput v3, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->localCountSur:I

    goto :goto_1

    .line 992
    :cond_3
    sput p0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->localCountSur:I

    .line 998
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    .line 932
    :catch_0
    sput-object v7, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->localMusicList:Ljava/util/List;

    .line 933
    sput-object v7, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->audioItems:Ljava/util/List;

    .line 934
    sput p0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->localCountSur:I

    return-void
.end method

.method private static getSubString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 1005
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sget v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->MAX_STR_LEN:I

    if-le p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private requestAudioFocus()Z
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->audioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v3, v2}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public getCurrentAlbumName()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPlayIndex()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    return v0
.end method

.method public getCurrentPlayType()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayType:I

    return v0
.end method

.method public getIsPlayMusic()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    return v0
.end method

.method public getLastSeek()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPlayMode()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playMode:I

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 270
    new-instance p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;-><init>(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)V

    return-object p1
.end method

.method public onBufferingProgress(II)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 590
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 591
    new-instance v0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myPlayer:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    .line 592
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myPlayer:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    invoke-virtual {v0, p0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->setPlayCallback(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;)V

    .line 594
    new-instance v0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-direct {v0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->wangYiSDK:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    .line 595
    invoke-static {p0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getLocalMusicData(Landroid/content/Context;)V

    const-string v0, "phone"

    .line 596
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 597
    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 598
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->audioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    const-string v0, "audio"

    .line 599
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->audioManager:Landroid/media/AudioManager;

    .line 601
    :cond_0
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->random:Ljava/util/Random;

    .line 603
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/neusoft/qdrivelink/music/musicreceiver/MyMediaButtonReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->rec:Landroid/content/ComponentName;

    .line 604
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->rec:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 605
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->rec:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 608
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 610
    new-instance v1, Landroid/media/RemoteControlClient;

    invoke-direct {v1, v0}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 611
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 612
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->wangYiSDK:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    new-instance v1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;-><init>(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)V

    invoke-virtual {v0, v1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->setWyPlayUrlCallBack(Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 667
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 668
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->abandonAudioFocus()V

    .line 670
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myPlayer:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myPlayer:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->idle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onError(IJ)V
    .locals 2

    .line 854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError: i:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",long l:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "textwang"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 855
    iput p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    .line 856
    iget p2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    if-eqz p2, :cond_1

    if-eq p2, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x2

    .line 861
    iput p2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentStatus:I

    goto :goto_0

    .line 858
    :cond_1
    iput p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentStatus:I

    .line 864
    :goto_0
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    if-eqz p2, :cond_2

    .line 865
    iget p3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    invoke-interface {p2, p3}, Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;->showPlayOrPause(I)V

    .line 867
    :cond_2
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myPlayer:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    if-eqz p2, :cond_3

    .line 868
    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->pause()Z

    .line 871
    :cond_3
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playState:Lcom/neusoft/qdrivelink/music/service/PlayState;

    if-eqz p2, :cond_4

    .line 872
    invoke-interface {p2, p1}, Lcom/neusoft/qdrivelink/music/service/PlayState;->playMusicState(I)V

    .line 875
    :cond_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playListRefrsh:Lcom/neusoft/qdrivelink/music/service/PlayListRefrsh;

    if-eqz p1, :cond_5

    .line 876
    iget p2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/music/service/PlayListRefrsh;->playListRefrsh(I)V

    .line 879
    :cond_5
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playMessage:Lcom/neusoft/qdrivelink/music/service/PlayMessage;

    if-eqz p1, :cond_6

    .line 880
    sget-object p2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget p3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    iget p3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayType:I

    iget v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {p1, p2, p3, v0}, Lcom/neusoft/qdrivelink/music/service/PlayMessage;->currentMessage(Lcom/neusoft/qdrivelink/music/bean/AudioItem;II)V

    :cond_6
    return-void
.end method

.method public onPlayCompletion()V
    .locals 0

    .line 890
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->serviceNextAuto()V

    return-void
.end method

.method public onPrepared(II)V
    .locals 3

    .line 815
    iget p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    iput p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlaySuccess:I

    .line 816
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->requestAudioFocus()Z

    const/4 p1, 0x0

    .line 817
    iput p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    .line 818
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    if-eqz p2, :cond_0

    .line 819
    iget v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    invoke-interface {p2, v0}, Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;->showPlayOrPause(I)V

    .line 821
    :cond_0
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz p2, :cond_1

    .line 822
    invoke-virtual {p2, p1}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object p2

    const/4 v0, 0x1

    .line 824
    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    const/4 v0, 0x2

    .line 825
    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    const/4 v0, 0x7

    .line 826
    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getSongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    const/16 v0, 0x9

    .line 827
    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getDuration()J

    move-result-wide v1

    invoke-virtual {p2, v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 828
    invoke-virtual {p2}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 829
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myRemoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    const-string p2, "textwwwww"

    const-string v0, "RemoteControlClient.PLAYSTATE_PLAYING222"

    .line 830
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    :cond_1
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playMessage:Lcom/neusoft/qdrivelink/music/service/PlayMessage;

    if-eqz p2, :cond_2

    .line 834
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    iget v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayType:I

    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {p2, v0, v1, v2}, Lcom/neusoft/qdrivelink/music/service/PlayMessage;->currentMessage(Lcom/neusoft/qdrivelink/music/bean/AudioItem;II)V

    .line 838
    :cond_2
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playListRefrsh:Lcom/neusoft/qdrivelink/music/service/PlayListRefrsh;

    if-eqz p2, :cond_3

    .line 839
    iget v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {p2, v0}, Lcom/neusoft/qdrivelink/music/service/PlayListRefrsh;->playListRefrsh(I)V

    .line 842
    :cond_3
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playState:Lcom/neusoft/qdrivelink/music/service/PlayState;

    if-eqz p2, :cond_4

    .line 843
    invoke-interface {p2, p1}, Lcom/neusoft/qdrivelink/music/service/PlayState;->playMusicState(I)V

    :cond_4
    return-void
.end method

.method public onSeekChanged(IILjava/lang/Object;)V
    .locals 4

    .line 895
    sget-object p3, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    if-eqz p3, :cond_0

    .line 896
    sget-object p3, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    int-to-long v0, p1

    invoke-virtual {p3, v0, v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setCurrentPositon(J)V

    .line 899
    :cond_0
    iget-object p3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz p3, :cond_1

    const/4 v0, 0x3

    int-to-long v1, p1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 900
    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 901
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RemoteControlClient.PLAYSTATE_PLAYING333 i:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "textwwwww"

    invoke-static {v0, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    :cond_1
    iget-object p3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->seekChanged:Lcom/neusoft/qdrivelink/music/service/SeekChanged;

    if-eqz p3, :cond_2

    .line 904
    invoke-interface {p3, p1, p2}, Lcom/neusoft/qdrivelink/music/service/SeekChanged;->onSeekChanged(II)V

    :cond_2
    return-void
.end method

.method public serviceNext()V
    .locals 4

    .line 688
    :try_start_0
    iget v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 707
    :cond_0
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 709
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->random:Ljava/util/Random;

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    goto :goto_0

    .line 698
    :cond_2
    iget v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    .line 699
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 700
    iget v3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    if-ge v3, v0, :cond_3

    goto :goto_0

    .line 702
    :cond_3
    iput v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    goto :goto_0

    .line 690
    :cond_4
    iget v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    .line 691
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 692
    iget v3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    if-ge v3, v0, :cond_5

    goto :goto_0

    .line 694
    :cond_5
    iput v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    .line 713
    :goto_0
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getPlayType()I

    move-result v0

    if-ne v0, v2, :cond_6

    .line 715
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myPlayer:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getPlayurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 718
    :cond_6
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->wangYiSDK:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->br:I

    invoke-virtual {v0, v1, v2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestPlayUrl(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 721
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public serviceNextAuto()V
    .locals 3

    .line 734
    :try_start_0
    iget v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 747
    :cond_0
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->random:Ljava/util/Random;

    sget-object v2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    goto :goto_0

    .line 736
    :cond_2
    iget v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    .line 737
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 738
    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    if-ge v2, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 740
    iput v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    .line 753
    :cond_4
    :goto_0
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getPlayType()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 755
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myPlayer:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getPlayurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 758
    :cond_5
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->wangYiSDK:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->br:I

    invoke-virtual {v0, v1, v2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestPlayUrl(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 761
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public servicePre()V
    .locals 3

    .line 772
    :try_start_0
    iget v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playMode:I

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 788
    :cond_0
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 790
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->random:Ljava/util/Random;

    sget-object v2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    iput v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    goto :goto_0

    .line 781
    :cond_2
    iget v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    .line 782
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 783
    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    if-gez v2, :cond_4

    sub-int/2addr v0, v1

    .line 784
    iput v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    goto :goto_0

    .line 774
    :cond_3
    iget v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    .line 775
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 776
    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    if-gez v2, :cond_4

    sub-int/2addr v0, v1

    .line 777
    iput v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    .line 795
    :cond_4
    :goto_0
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getPlayType()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 797
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myPlayer:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getPlayurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 800
    :cond_5
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->wangYiSDK:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->br:I

    invoke-virtual {v0, v1, v2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestPlayUrl(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 803
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setCurrentPlayType(I)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlayType:I

    return-void
.end method

.method public setLastPosition(J)V
    .locals 0

    return-void
.end method

.method public setPlayListRefrsh(Lcom/neusoft/qdrivelink/music/service/PlayListRefrsh;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playListRefrsh:Lcom/neusoft/qdrivelink/music/service/PlayListRefrsh;

    return-void
.end method

.method public setPlayMessage(Lcom/neusoft/qdrivelink/music/service/PlayMessage;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playMessage:Lcom/neusoft/qdrivelink/music/service/PlayMessage;

    return-void
.end method

.method public setPlayOrPauseCallback(Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    return-void
.end method

.method public setPlayState(Lcom/neusoft/qdrivelink/music/service/PlayState;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playState:Lcom/neusoft/qdrivelink/music/service/PlayState;

    return-void
.end method

.method public setSeekChanged(Lcom/neusoft/qdrivelink/music/service/SeekChanged;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->seekChanged:Lcom/neusoft/qdrivelink/music/service/SeekChanged;

    return-void
.end method

.method public stopPlayBackState()V
    .locals 5

    .line 659
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 660
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    :cond_0
    return-void
.end method
