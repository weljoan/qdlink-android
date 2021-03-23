.class public Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;
.super Ljava/lang/Object;
.source "QD_DBUtil.java"


# static fields
.field private static final COLUMN_ANDROID:Ljava/lang/String; = "android"

.field private static final COLUMN_EXTRAJSON:Ljava/lang/String; = "extrajson"

.field private static final COLUMN_FACTORY:Ljava/lang/String; = "factory"

.field private static final COLUMN_FACTORYID:Ljava/lang/String; = "factoryid"

.field private static final COLUMN_HUID:Ljava/lang/String; = "huid"

.field private static final COLUMN_ICONURL:Ljava/lang/String; = "iconurl"

.field private static final COLUMN_LINKANDROIDVER:Ljava/lang/String; = "linkandroidver"

.field private static final COLUMN_LINKAPPID:Ljava/lang/String; = "linkappid"

.field private static final COLUMN_LINKAPPIDTEST:Ljava/lang/String; = "linkappidtest"

.field private static final COLUMN_LINKIOSVER:Ljava/lang/String; = "linkiosver"

.field private static final COLUMN_NAME:Ljava/lang/String; = "name"

.field private static final COLUMN_NOICONURL:Ljava/lang/String; = "noiconurl"

.field private static final COLUMN_PORT:Ljava/lang/String; = "port"

.field private static final COLUMN_SCANKEY:Ljava/lang/String; = "scankey"

.field private static final COLUMN_TYPE:Ljava/lang/String; = "type"

.field private static final COLUMN_TYPEID:Ljava/lang/String; = "typeid"

.field private static DATABASE_PATH:Ljava/lang/String;

.field private static dbu:Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;


# instance fields
.field private final DATABASE_NAME:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private database:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/com.neusoft.ssp.assistant/files"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->DATABASE_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "linkmanager.db3"

    .line 20
    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->DATABASE_NAME:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->context:Landroid/content/Context;

    .line 60
    invoke-direct {p0, p2}, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->copyDB(I)V

    return-void
.end method

.method private copyDB(I)V
    .locals 4

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->DATABASE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "linkmanager.db3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->DATABASE_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->i(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 73
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 75
    :cond_0
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p1

    .line 78
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 81
    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v3, 0x0

    .line 82
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 85
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->i(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IOException=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->i(Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 87
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileNotFoundException=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->i(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public static getInstance(Landroid/content/Context;I)Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;
    .locals 3

    .line 43
    sget-object v0, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->dbu:Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;

    if-nez v0, :cond_1

    .line 44
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/files"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->DATABASE_PATH:Ljava/lang/String;

    .line 48
    :cond_0
    new-instance v0, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;

    invoke-direct {v0, p0, p1}, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;-><init>(Landroid/content/Context;I)V

    sput-object v0, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->dbu:Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;

    .line 50
    :cond_1
    sget-object p0, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->dbu:Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;

    return-object p0
.end method

.method private openDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 4

    const/4 v0, 0x0

    .line 104
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->DATABASE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "linkmanager.db3"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "222databaseFilename=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neusoft/interconnection/utils/Logger;->i(Ljava/lang/String;)V

    .line 106
    invoke-static {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->openOrCreateDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openDatabase Exception=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->i(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getDBInfo(Ljava/lang/String;)Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "scankey=="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->i(Ljava/lang/String;)V

    .line 270
    invoke-direct/range {p0 .. p0}, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, v1, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 271
    iget-object v3, v1, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v3, :cond_2

    :try_start_0
    const-string v4, "linkmanager"

    const/4 v5, 0x0

    const-string v6, "scankey = ?"

    const/4 v0, 0x1

    new-array v7, v0, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v2, v7, v12

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 276
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 279
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v5, ""

    if-eqz v4, :cond_1

    :try_start_1
    const-string v4, "factory"

    .line 281
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 280
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "type"

    .line 282
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "factoryid"

    .line 284
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 283
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "typeid"

    .line 286
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 285
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "huid"

    .line 287
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "android"

    .line 288
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    if-ne v10, v0, :cond_0

    const/4 v12, 0x1

    :cond_0
    const-string v0, "port"

    .line 291
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string v0, "linkappid"

    .line 293
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 292
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v0, "linkappidtest"

    .line 295
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 294
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v0, "name"

    .line 296
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v0, "iconurl"

    .line 298
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 297
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v0, "noiconurl"

    .line 300
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 299
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v0, "linkiosver"

    .line 302
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 301
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v0, "linkandroidver"

    .line 304
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 303
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v0, "extrajson"

    .line 307
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 306
    invoke-interface {v3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 309
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    move-object/from16 v21, v5

    move-object/from16 v5, v16

    move-object/from16 v0, v17

    move-object/from16 v11, v18

    move-object/from16 v20, v19

    goto :goto_1

    :cond_1
    move-object v0, v5

    move-object v4, v0

    move-object v6, v4

    move-object v7, v6

    move-object v8, v7

    move-object v9, v8

    move-object v11, v9

    move-object v13, v11

    move-object v14, v13

    move-object v15, v14

    move-object/from16 v20, v15

    move-object/from16 v21, v20

    const/4 v10, 0x0

    .line 313
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 314
    iget-object v3, v1, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 315
    new-instance v3, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;

    invoke-direct {v3}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 316
    :try_start_4
    invoke-virtual {v3, v7}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setFacID(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v3, v8}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setTypeID(Ljava/lang/String;)V

    .line 318
    invoke-virtual {v3, v9}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setHuID(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v3, v12}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setAndroid(Z)V

    .line 320
    invoke-virtual {v3, v10}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setPort(I)V

    .line 321
    invoke-virtual {v3, v13}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setLinkappid(Ljava/lang/String;)V

    .line 322
    invoke-virtual {v3, v4}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setFac(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v3, v6}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setType(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v3, v14}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setLinkappidtest(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v3, v2}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setScankey(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v3, v15}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setName(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v3, v5}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setIconurl(Ljava/lang/String;)V

    .line 328
    invoke-virtual {v3, v0}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setNoiconurl(Ljava/lang/String;)V

    .line 329
    invoke-virtual {v3, v11}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setLinkiosver(Ljava/lang/String;)V

    move-object/from16 v5, v20

    .line 330
    invoke-virtual {v3, v5}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setLinkandroidver(Ljava/lang/String;)V

    move-object/from16 v5, v21

    .line 331
    invoke-virtual {v3, v5}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setExtrajson(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v3}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->i(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v16, v3

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v11, v3

    goto :goto_2

    :catch_2
    move-exception v0

    const/4 v11, 0x0

    .line 334
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->i(Ljava/lang/String;)V

    move-object/from16 v16, v11

    goto :goto_3

    :cond_2
    const/16 v16, 0x0

    :goto_3
    return-object v16
.end method

.method public getDBInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f=="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--t=="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->i(Ljava/lang/String;)V

    .line 197
    invoke-direct/range {p0 .. p0}, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, v1, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 198
    iget-object v4, v1, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v4, :cond_2

    :try_start_0
    const-string v5, "linkmanager"

    const/4 v6, 0x0

    const-string v7, "factory = ? AND type = ?"

    const/4 v0, 0x2

    new-array v8, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v2, v8, v0

    const/4 v13, 0x1

    aput-object v3, v8, v13

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 203
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    .line 206
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v6, ""

    if-eqz v5, :cond_1

    :try_start_1
    const-string v5, "factoryid"

    .line 208
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 207
    invoke-interface {v4, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "typeid"

    .line 210
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 209
    invoke-interface {v4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "huid"

    .line 211
    invoke-interface {v4, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "android"

    .line 212
    invoke-interface {v4, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v4, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v13, :cond_0

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const-string v0, "port"

    .line 215
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v0, "linkappid"

    .line 217
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 216
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v0, "linkappidtest"

    .line 219
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 218
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v0, "scankey"

    .line 221
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 220
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const-string v0, "name"

    .line 222
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v0, "iconurl"

    .line 224
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 223
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v0, "noiconurl"

    .line 226
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 225
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v0, "linkiosver"

    .line 228
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 227
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v0, "linkandroidver"

    .line 230
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 229
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v0, "extrajson"

    .line 233
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 232
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 235
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move-object/from16 v21, v6

    move-object/from16 v6, v16

    move-object/from16 v0, v17

    move-object/from16 v12, v18

    move-object/from16 v20, v19

    goto :goto_2

    :cond_1
    move-object v0, v6

    move-object v5, v0

    move-object v7, v5

    move-object v8, v7

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v14, v12

    move-object v15, v14

    move-object/from16 v20, v15

    move-object/from16 v21, v20

    const/4 v9, 0x0

    const/4 v13, 0x0

    .line 238
    :goto_2
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 239
    iget-object v4, v1, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 241
    new-instance v4, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;

    invoke-direct {v4}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 242
    :try_start_4
    invoke-virtual {v4, v5}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setFacID(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v4, v7}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setTypeID(Ljava/lang/String;)V

    .line 244
    invoke-virtual {v4, v8}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setHuID(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v4, v13}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setAndroid(Z)V

    .line 246
    invoke-virtual {v4, v9}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setPort(I)V

    .line 247
    invoke-virtual {v4, v10}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setLinkappid(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v4, v2}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setFac(Ljava/lang/String;)V

    .line 249
    invoke-virtual {v4, v3}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setType(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v4, v11}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setLinkappidtest(Ljava/lang/String;)V

    .line 251
    invoke-virtual {v4, v14}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setScankey(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v4, v15}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setName(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v4, v6}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setIconurl(Ljava/lang/String;)V

    .line 254
    invoke-virtual {v4, v0}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setNoiconurl(Ljava/lang/String;)V

    .line 255
    invoke-virtual {v4, v12}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setLinkiosver(Ljava/lang/String;)V

    move-object/from16 v6, v20

    .line 256
    invoke-virtual {v4, v6}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setLinkandroidver(Ljava/lang/String;)V

    move-object/from16 v6, v21

    .line 257
    invoke-virtual {v4, v6}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setExtrajson(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v4}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->i(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object/from16 v16, v4

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v12, v4

    goto :goto_3

    :catch_2
    move-exception v0

    const/4 v12, 0x0

    .line 260
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->i(Ljava/lang/String;)V

    move-object/from16 v16, v12

    goto :goto_4

    :cond_2
    const/16 v16, 0x0

    :goto_4
    return-object v16
.end method

.method public getDBInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "factory=="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--type=="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--huId=="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->i(Ljava/lang/String;)V

    .line 125
    invoke-direct/range {p0 .. p0}, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->openDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, v1, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->database:Landroid/database/sqlite/SQLiteDatabase;

    .line 126
    iget-object v5, v1, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->database:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v5, :cond_2

    :try_start_0
    const-string v6, "linkmanager"

    const/4 v7, 0x0

    const-string v8, "factoryid = ? AND typeid = ? AND huid = ?"

    const/4 v0, 0x3

    new-array v9, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v2, v9, v0

    const/4 v14, 0x1

    aput-object v3, v9, v14

    const/4 v10, 0x2

    aput-object v4, v9, v10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 131
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 135
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v7, ""

    if-eqz v6, :cond_1

    :try_start_1
    const-string v6, "factory"

    .line 137
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 136
    invoke-interface {v5, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v8, "type"

    .line 138
    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "android"

    .line 139
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v14, :cond_0

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    const-string v0, "port"

    .line 142
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v0, "linkappid"

    .line 144
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 143
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v0, "linkappidtest"

    .line 146
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 145
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v0, "scankey"

    .line 148
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 147
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v0, "name"

    .line 149
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const-string v0, "iconurl"

    .line 151
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 150
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v0, "noiconurl"

    .line 153
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 152
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v0, "linkiosver"

    .line 155
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 154
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v0, "linkandroidver"

    .line 157
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 156
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v0, "extrajson"

    .line 160
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 159
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 162
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    move-object/from16 v21, v7

    move-object/from16 v7, v16

    move-object/from16 v0, v17

    move-object/from16 v13, v18

    move-object/from16 v20, v19

    goto :goto_2

    :cond_1
    move-object v0, v7

    move-object v6, v0

    move-object v8, v6

    move-object v10, v8

    move-object v11, v10

    move-object v12, v11

    move-object v13, v12

    move-object v15, v13

    move-object/from16 v20, v15

    move-object/from16 v21, v20

    const/4 v9, 0x0

    const/4 v14, 0x0

    .line 165
    :goto_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 166
    iget-object v5, v1, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->database:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 168
    new-instance v5, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;

    invoke-direct {v5}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;-><init>()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 169
    :try_start_4
    invoke-virtual {v5, v6}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setFac(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v5, v8}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setType(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v5, v14}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setAndroid(Z)V

    .line 172
    invoke-virtual {v5, v9}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setPort(I)V

    .line 173
    invoke-virtual {v5, v2}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setFacID(Ljava/lang/String;)V

    .line 174
    invoke-virtual {v5, v3}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setTypeID(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v5, v4}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setHuID(Ljava/lang/String;)V

    .line 176
    invoke-virtual {v5, v10}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setLinkappid(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v5, v11}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setLinkappidtest(Ljava/lang/String;)V

    .line 178
    invoke-virtual {v5, v12}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setScankey(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v5, v15}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setName(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v5, v7}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setIconurl(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v5, v0}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setNoiconurl(Ljava/lang/String;)V

    .line 182
    invoke-virtual {v5, v13}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setLinkiosver(Ljava/lang/String;)V

    move-object/from16 v7, v20

    .line 183
    invoke-virtual {v5, v7}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setLinkandroidver(Ljava/lang/String;)V

    move-object/from16 v7, v21

    .line 184
    invoke-virtual {v5, v7}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->setExtrajson(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v5}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->i(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-object v13, v5

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v13, v5

    goto :goto_3

    :catch_2
    move-exception v0

    const/4 v13, 0x0

    .line 187
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->i(Ljava/lang/String;)V

    goto :goto_4

    :cond_2
    const/4 v13, 0x0

    :goto_4
    return-object v13
.end method
