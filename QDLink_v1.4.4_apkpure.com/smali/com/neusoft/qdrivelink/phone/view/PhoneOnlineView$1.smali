.class Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1;
.super Ljava/lang/Object;
.source "PhoneOnlineView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1;->this$0:Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callLogChange()V
    .locals 0

    return-void
.end method

.method public state(I)V
    .locals 2

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u72b6\u6001"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1;->this$0:Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->access$100(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1$1;-><init>(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
