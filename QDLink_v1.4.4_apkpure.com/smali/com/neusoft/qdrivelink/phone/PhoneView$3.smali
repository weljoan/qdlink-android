.class Lcom/neusoft/qdrivelink/phone/PhoneView$3;
.super Ljava/lang/Object;
.source "PhoneView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$3;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 154
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$3;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    check-cast p2, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$802(Lcom/neusoft/qdrivelink/phone/PhoneView;Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    .line 155
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$3;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$800(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$3;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$900(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->setPhoneStateListener(Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;)V

    .line 156
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$3;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$800(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$3;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$1000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->setDateChangeListener(Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;)V

    .line 157
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$3;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$800(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->getPhoneState()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$3;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$1100(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/Utils/NumUtils;->simReady(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$3;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$1200(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/Utils/NumUtils;->simReady(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 159
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$3;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    const/4 p2, 0x2

    new-instance v0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$1300(Lcom/neusoft/qdrivelink/phone/PhoneView;ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    goto :goto_0

    .line 161
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Resume"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$3;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$800(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->getPhoneState()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$3;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$800(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->setPhoneStateListener(Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;)V

    .line 170
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$3;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$800(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->setPhoneStateListener(Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;)V

    .line 171
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$3;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1, v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$802(Lcom/neusoft/qdrivelink/phone/PhoneView;Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    return-void
.end method
