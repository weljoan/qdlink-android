.class Lcom/neusoft/qdrivezeusbase/utils/ACache$xFileOutputStream;
.super Ljava/io/FileOutputStream;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivezeusbase/utils/ACache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "xFileOutputStream"
.end annotation


# instance fields
.field file:Ljava/io/File;

.field final synthetic this$0:Lcom/neusoft/qdrivezeusbase/utils/ACache;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivezeusbase/utils/ACache;Ljava/io/File;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 102
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache$xFileOutputStream;->this$0:Lcom/neusoft/qdrivezeusbase/utils/ACache;

    .line 103
    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 104
    iput-object p2, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache$xFileOutputStream;->file:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-super {p0}, Ljava/io/FileOutputStream;->close()V

    .line 109
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache$xFileOutputStream;->this$0:Lcom/neusoft/qdrivezeusbase/utils/ACache;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->access$100(Lcom/neusoft/qdrivezeusbase/utils/ACache;)Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache$xFileOutputStream;->file:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;->access$200(Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;Ljava/io/File;)V

    return-void
.end method
