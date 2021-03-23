.class Lcn/dr/lib/app/DRApplication$1;
.super Lcn/dr/lib/app/DRCrashHandler;
.source "DRApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dr/lib/app/DRApplication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/dr/lib/app/DRApplication;


# direct methods
.method constructor <init>(Lcn/dr/lib/app/DRApplication;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/dr/lib/app/DRApplication$1;->this$0:Lcn/dr/lib/app/DRApplication;

    invoke-direct {p0}, Lcn/dr/lib/app/DRCrashHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public initParams()V
    .locals 0

    return-void
.end method

.method public sendToServer(Ljava/io/File;Ljava/io/File;)V
    .locals 0

    return-void
.end method
