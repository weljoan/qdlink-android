.class Lcom/neusoft/qdrivelink/phone/service/PhoneService$1;
.super Ljava/lang/Object;
.source "PhoneService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/service/PhoneService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$1;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$1;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$1;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$300(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$1;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$302(Lcom/neusoft/qdrivelink/phone/service/PhoneService;I)I

    .line 122
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$1;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object v0

    const/16 v1, 0x362

    if-eqz v0, :cond_0

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yummy000119"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$1;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$300(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$1;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$1;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$100(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "yummy000124"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$1;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$300(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$1;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$100(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$1;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$400(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$1;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$400(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    :cond_2
    return-void
.end method
