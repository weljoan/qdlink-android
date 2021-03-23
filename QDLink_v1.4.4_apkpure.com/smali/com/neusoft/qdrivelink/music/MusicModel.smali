.class public Lcom/neusoft/qdrivelink/music/MusicModel;
.super Ljava/lang/Object;
.source "MusicModel.java"


# static fields
.field public static MAX_STR_LEN:I = 0x1e

.field private static final sArtworkUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://media/external/audio/albumart"

    .line 251
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivelink/music/MusicModel;->sArtworkUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeMusicType(I[Landroid/widget/TextView;[Landroid/view/View;Landroid/content/Context;[Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 6

    const v0, 0x7f0400bb

    const v1, 0x7f0400aa

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p0, :cond_1

    if-eq p0, v3, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    aget-object p0, p1, v4

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    aget-object p0, p1, v3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 55
    aget-object p0, p2, v4

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    aget-object p0, p2, v3

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 57
    aget-object p0, p4, v4

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 58
    aget-object p0, p4, v3

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    goto :goto_0

    .line 45
    :cond_1
    aget-object p0, p1, v4

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    aget-object p0, p1, v3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    aget-object p0, p2, v4

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 48
    aget-object p0, p2, v3

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 49
    aget-object p0, p4, v4

    invoke-virtual {p0, v4}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 50
    aget-object p0, p4, v3

    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private static getAlbumArt(ILandroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v0, "album_art"

    .line 155
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://media/external/audio/albums"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 158
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 159
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    const/4 p1, 0x0

    .line 160
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 162
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1
.end method

.method public static getLocalMusicData(Landroid/content/Context;Lcom/neusoft/qdrivelink/music/MusicView;)V
    .locals 8

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p0, 0x0

    const/4 v7, -0x1

    .line 88
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

    .line 101
    invoke-virtual {p1, v7, p0}, Lcom/neusoft/qdrivelink/music/MusicView;->responseLocalMusicData(ILjava/util/List;)V

    return-void

    .line 104
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p0

    const/4 v2, 0x0

    if-nez p0, :cond_2

    .line 105
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "mime_type"

    .line 106
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 108
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 109
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "audio/"

    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 110
    new-instance p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-direct {p0}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;-><init>()V

    const-string v2, "duration"

    .line 112
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setTotalTime(I)V

    .line 113
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getTotalTime()I

    move-result v2

    const v3, 0x1d4c0

    if-le v2, v3, :cond_1

    const-string v2, "_data"

    .line 116
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".awb"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getTotalTime()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v3, v4}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setDuration(J)V

    const-string v3, "_id"

    .line 118
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setId(J)V

    .line 119
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setListenFile(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getListenFile()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setPlayurl(Ljava/lang/String;)V

    const-string v2, "title"

    .line 121
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/neusoft/qdrivelink/music/MusicModel;->MAX_STR_LEN:I

    invoke-static {v2, v3}, Lcom/neusoft/qdrivelink/music/MusicModel;->getSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setSongName(Ljava/lang/String;)V

    const-string v2, "album"

    .line 122
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/neusoft/qdrivelink/music/MusicModel;->MAX_STR_LEN:I

    invoke-static {v2, v3}, Lcom/neusoft/qdrivelink/music/MusicModel;->getSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setAlbumName(Ljava/lang/String;)V

    const-string v2, "artist"

    .line 123
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/neusoft/qdrivelink/music/MusicModel;->MAX_STR_LEN:I

    invoke-static {v2, v3}, Lcom/neusoft/qdrivelink/music/MusicModel;->getSubString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setArtistName(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 124
    invoke-virtual {p0, v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setPlayType(I)V

    .line 137
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    goto/16 :goto_0

    .line 145
    :cond_2
    invoke-virtual {p1, v2, v0}, Lcom/neusoft/qdrivelink/music/MusicView;->responseLocalMusicData(ILjava/util/List;)V

    .line 149
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return-void

    .line 95
    :catch_0
    invoke-virtual {p1, v7, p0}, Lcom/neusoft/qdrivelink/music/MusicView;->responseLocalMusicData(ILjava/util/List;)V

    return-void
.end method

.method public static getMusicBitemp(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;
    .locals 4

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gez v2, :cond_1

    cmp-long v3, p1, v0

    if-ltz v3, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must specify an album or a song id"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string v0, "r"

    const/4 v1, 0x0

    if-gez v2, :cond_2

    .line 262
    :try_start_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "content://media/external/audio/media/"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "/albumart"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 264
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 266
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 267
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 270
    :cond_2
    sget-object p1, Lcom/neusoft/qdrivelink/music/MusicModel;->sArtworkUri:Landroid/net/Uri;

    invoke-static {p1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 271
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    .line 272
    invoke-virtual {p2, p1, v0}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 274
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 275
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, p1

    goto :goto_1

    :cond_3
    return-object v1

    :catch_0
    nop

    :cond_4
    :goto_1
    if-nez v1, :cond_5

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0b0019

    .line 288
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 290
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 291
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_5
    const/4 p0, 0x1

    const/16 p1, 0x96

    .line 293
    invoke-static {v1, p1, p1, p0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getMusicRankData(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;Lcom/neusoft/qdrivelink/music/MusicView;)V
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestRankList()V

    .line 71
    new-instance v0, Lcom/neusoft/qdrivelink/music/MusicModel$1;

    invoke-direct {v0, p1}, Lcom/neusoft/qdrivelink/music/MusicModel$1;-><init>(Lcom/neusoft/qdrivelink/music/MusicView;)V

    invoke-virtual {p0, v0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->setWyRankCallBack(Lcom/neusoft/sdk/wangyilibinter/sdk/WYRankCallBack;)V

    return-void
.end method

.method private static getSubString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 247
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    sget v0, Lcom/neusoft/qdrivelink/music/MusicModel;->MAX_STR_LEN:I

    if-le p1, v0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method public static getmusicAlbumImage(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p0, v5, v0

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 p0, 0x0

    .line 173
    :try_start_0
    sget-object v2, Landroid/provider/MediaStore$Audio$Albums;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "album_key = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_0

    return-object p0

    .line 184
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "album_art"

    .line 186
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    .line 187
    invoke-interface {p1, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :catch_0
    :cond_1
    return-object p0
.end method

.method public static responseSearchMusic(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;Lcom/neusoft/qdrivelink/music/MusicView;Ljava/lang/String;IIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 194
    invoke-virtual/range {v0 .. v5}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestSearch(Ljava/lang/String;IIII)V

    .line 196
    new-instance p2, Lcom/neusoft/qdrivelink/music/MusicModel$2;

    invoke-direct {p2, p1}, Lcom/neusoft/qdrivelink/music/MusicModel$2;-><init>(Lcom/neusoft/qdrivelink/music/MusicView;)V

    invoke-virtual {p0, p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->setWySearchCallBack(Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;)V

    return-void
.end method
