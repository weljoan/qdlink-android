.class Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$2;
.super Ljava/lang/Object;
.source "PhoneOnlineView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 83
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$2;->this$0:Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 86
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$2;->this$0:Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;

    check-cast p2, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->access$202(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    .line 87
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$2;->this$0:Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->access$200(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$2;->this$0:Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->access$300(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->setPhoneIdleStateListener(Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;)V

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "binder:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$2;->this$0:Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->access$200(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->getPhoneState()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$2;->this$0:Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->access$200(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->getPhoneState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$2;->this$0:Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->access$400(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$2;->this$0:Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->access$200(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->setPhoneIdleStateListener(Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;)V

    .line 97
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$2;->this$0:Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;

    invoke-static {p1, v0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->access$202(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    return-void
.end method
