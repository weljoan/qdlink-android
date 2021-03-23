.class public Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;
.super Landroid/os/Binder;
.source "PhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/phone/service/PhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhoneState()Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$300(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setDateChangeListener(Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v0, p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$202(Lcom/neusoft/qdrivelink/phone/service/PhoneService;Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;)Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;

    return-void
.end method

.method public setPhoneIdleStateListener(Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v0, p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$102(Lcom/neusoft/qdrivelink/phone/service/PhoneService;Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    return-void
.end method

.method public setPhoneMainStateInfoListener(Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v0, p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$402(Lcom/neusoft/qdrivelink/phone/service/PhoneService;Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    return-void
.end method

.method public setPhoneStateListener(Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v0, p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$002(Lcom/neusoft/qdrivelink/phone/service/PhoneService;Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    return-void
.end method
