.class final Lcom/neusoft/qdrivelink/interconnection/utils/AdbCopyUtils$1;
.super Ljava/lang/Object;
.source "AdbCopyUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/interconnection/utils/AdbCopyUtils;->writeFileToSDCard([BLjava/lang/String;Ljava/lang/String;ZZLandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$append:Z

.field final synthetic val$autoLine:Z

.field final synthetic val$buffer:[B

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$folder:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Z[BZ)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/utils/AdbCopyUtils$1;->val$folder:Ljava/lang/String;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/interconnection/utils/AdbCopyUtils$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/neusoft/qdrivelink/interconnection/utils/AdbCopyUtils$1;->val$fileName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/neusoft/qdrivelink/interconnection/utils/AdbCopyUtils$1;->val$append:Z

    iput-object p5, p0, Lcom/neusoft/qdrivelink/interconnection/utils/AdbCopyUtils$1;->val$buffer:[B

    iput-boolean p6, p0, Lcom/neusoft/qdrivelink/interconnection/utils/AdbCopyUtils$1;->val$autoLine:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 63
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 68
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/utils/AdbCopyUtils$1;->val$folder:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/utils/AdbCopyUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/utils/AdbCopyUtils$1;->val$folder:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 84
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 90
    :cond_1
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/utils/AdbCopyUtils$1;->val$fileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "app_log.txt"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 93
    :cond_2
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/utils/AdbCopyUtils$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x0

    .line 98
    :try_start_0
    iget-boolean v2, p0, Lcom/neusoft/qdrivelink/interconnection/utils/AdbCopyUtils$1;->val$append:Z

    if-eqz v2, :cond_4

    .line 100
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 101
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 102
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/utils/AdbCopyUtils$1;->val$buffer:[B

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 103
    iget-boolean v1, p0, Lcom/neusoft/qdrivelink/interconnection/utils/AdbCopyUtils$1;->val$autoLine:Z

    if-eqz v1, :cond_3

    const-string v1, "\n"

    .line 104
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_7

    :catch_0
    move-exception v1

    move-object v5, v2

    move-object v2, v0

    move-object v0, v5

    goto :goto_3

    .line 108
    :cond_4
    :try_start_2
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    :try_start_3
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/utils/AdbCopyUtils$1;->val$buffer:[B

    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 110
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_2
    if-eqz v0, :cond_5

    .line 117
    :try_start_4
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    :cond_5
    if-eqz v2, :cond_7

    .line 120
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v2, v0

    goto :goto_7

    :catch_2
    move-exception v1

    move-object v2, v0

    .line 113
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v0, :cond_6

    .line 117
    :try_start_6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_5

    :cond_6
    :goto_4
    if-eqz v2, :cond_7

    .line 120
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    .line 123
    :goto_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_6
    return-void

    :catchall_2
    move-exception v1

    :goto_7
    if-eqz v0, :cond_8

    .line 117
    :try_start_7
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_8

    :catch_4
    move-exception v0

    goto :goto_9

    :cond_8
    :goto_8
    if-eqz v2, :cond_9

    .line 120
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_a

    .line 123
    :goto_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 124
    :cond_9
    :goto_a
    throw v1

    :cond_a
    return-void
.end method
