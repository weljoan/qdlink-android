.class public Lcom/neusoft/qdrivelink/music/customview/MusicConstant;
.super Ljava/lang/Object;
.source "MusicConstant.java"


# static fields
.field public static final BUNDLE_KEY_ALBUM_NAME:Ljava/lang/String; = "key_aublmname"

.field public static final BUNDLE_KEY_SONGID:Ljava/lang/String; = "key_songid"

.field public static final LOCAL_AUTO_ALBUM:Ljava/lang/String; = "localautoalbum"

.field public static final MUSIC_IMAGE_LOADING:I = 0x102

.field public static final MUSIC_LIST_SELECTED_RESUME:I = 0x7

.field public static final MUSIC_LIST_SELECTED_RESUME_01:I = 0x8

.field public static final MUSIC_LOCALDATA:I = 0x2

.field public static final MUSIC_MUSIC_LIST_RESUME_DISPLAY:I = 0x13

.field public static final MUSIC_MUSIC_LIST_RESUME_VOICE:I = 0x12

.field public static final MUSIC_ONLINELIST_PLAYSTATE_RESULT:I = 0x106

.field public static final MUSIC_ONLINE_MUSICLIST:I = 0x3

.field public static final MUSIC_ONLINE_RESUME:I = 0x11

.field public static final MUSIC_ONLINK_SELECTED:I = 0x109

.field public static final MUSIC_PLAYLIST_PLAYSTATE_RESULT:I = 0x107

.field public static final MUSIC_PLAYLIST_PLAYSTATE_RESULT_LOADING:I = 0x108

.field public static final MUSIC_PLAYLIST_REFRESH:I = 0x5

.field public static final MUSIC_PLAYSTATE:I = 0x103

.field public static final MUSIC_PLAYSTATE_RESULT:I = 0x104

.field public static final MUSIC_PLAY_ANIM:I = 0x10

.field public static final MUSIC_PLAY_ANIM_RESUME:I = 0x9

.field public static final MUSIC_PROGRESSBAR_CHANGE:I = 0x101

.field public static final MUSIC_RANKDATA:I = 0x1

.field public static final MUSIC_SEARCH_MUSICLIST:I = 0x4

.field public static final MUSIC_SEARCH_PLAYSTATE_RESULT:I = 0x105

.field public static final MUSIC_VOICE_SEARCH_PLAY:I = 0x6

.field public static audioItems:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;"
        }
    .end annotation
.end field

.field public static currentPlayMusicList:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;"
        }
    .end annotation
.end field

.field public static localCountSur:I = -0x1

.field public static localMusicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;"
        }
    .end annotation
.end field

.field public static musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

.field public static musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

.field public static onLineMusicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dip2px(FLandroid/content/Context;)I
    .locals 1

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 13

    const v0, 0x5265c00

    int-to-long v0, v0

    .line 61
    div-long v2, p0, v0

    mul-long v0, v0, v2

    sub-long/2addr p0, v0

    const v0, 0x36ee80

    int-to-long v0, v0

    .line 62
    div-long v4, p0, v0

    mul-long v0, v0, v4

    sub-long/2addr p0, v0

    const v0, 0xea60

    int-to-long v0, v0

    .line 63
    div-long v6, p0, v0

    mul-long v0, v0, v6

    sub-long/2addr p0, v0

    const/16 v0, 0x3e8

    int-to-long v0, v0

    .line 64
    div-long v8, p0, v0

    mul-long v0, v0, v8

    sub-long/2addr p0, v0

    const-wide/16 v0, 0xa

    const-string v10, "0"

    const-string v11, ""

    cmp-long v12, v2, v0

    if-gez v12, :cond_0

    .line 67
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    cmp-long v2, v4, v0

    if-gez v2, :cond_1

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    cmp-long v2, v6, v0

    if-gez v2, :cond_2

    .line 69
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    cmp-long v3, v8, v0

    if-gez v3, :cond_3

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    cmp-long v4, p0, v0

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    if-gez v4, :cond_4

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x64

    cmp-long v1, p0, v4

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    if-gez v1, :cond_5

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTimeMin(J)I
    .locals 13

    const v0, 0x5265c00

    int-to-long v0, v0

    .line 85
    div-long v2, p0, v0

    mul-long v0, v0, v2

    sub-long/2addr p0, v0

    const v0, 0x36ee80

    int-to-long v0, v0

    .line 86
    div-long v4, p0, v0

    mul-long v0, v0, v4

    sub-long/2addr p0, v0

    const v0, 0xea60

    int-to-long v0, v0

    .line 87
    div-long v6, p0, v0

    mul-long v0, v0, v6

    sub-long/2addr p0, v0

    const/16 v0, 0x3e8

    int-to-long v0, v0

    .line 88
    div-long v8, p0, v0

    mul-long v0, v0, v8

    sub-long/2addr p0, v0

    const-wide/16 v0, 0xa

    const-string v10, "0"

    const-string v11, ""

    cmp-long v12, v2, v0

    if-gez v12, :cond_0

    .line 91
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    cmp-long v2, v4, v0

    if-gez v2, :cond_1

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    cmp-long v2, v6, v0

    if-gez v2, :cond_2

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    cmp-long v3, v8, v0

    if-gez v3, :cond_3

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    cmp-long v4, p0, v0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    if-gez v4, :cond_4

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_4
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v4, 0x64

    cmp-long v1, p0, v4

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    if-gez v1, :cond_5

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    mul-int/lit8 p0, p0, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr p0, p1

    return p0
.end method
