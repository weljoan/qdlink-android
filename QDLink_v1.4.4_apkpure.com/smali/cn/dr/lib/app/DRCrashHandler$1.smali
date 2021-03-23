.class Lcn/dr/lib/app/DRCrashHandler$1;
.super Ljava/lang/Object;
.source "DRCrashHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/dr/lib/app/DRCrashHandler;->handlerException(Ljava/lang/Throwable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/dr/lib/app/DRCrashHandler;


# direct methods
.method constructor <init>(Lcn/dr/lib/app/DRCrashHandler;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcn/dr/lib/app/DRCrashHandler$1;->this$0:Lcn/dr/lib/app/DRCrashHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 167
    invoke-static {}, Lcn/dr/lib/app/DRCrashHandler;->access$000()Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "DRCrashHandler is ready send crash-info to device!"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 169
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 170
    iget-object v0, p0, Lcn/dr/lib/app/DRCrashHandler$1;->this$0:Lcn/dr/lib/app/DRCrashHandler;

    invoke-static {v0}, Lcn/dr/lib/app/DRCrashHandler;->access$100(Lcn/dr/lib/app/DRCrashHandler;)Lcn/dr/lib/app/DRApplication;

    move-result-object v0

    iget-object v1, p0, Lcn/dr/lib/app/DRCrashHandler$1;->this$0:Lcn/dr/lib/app/DRCrashHandler;

    invoke-virtual {v1}, Lcn/dr/lib/app/DRCrashHandler;->getDRTipMsg()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 171
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
