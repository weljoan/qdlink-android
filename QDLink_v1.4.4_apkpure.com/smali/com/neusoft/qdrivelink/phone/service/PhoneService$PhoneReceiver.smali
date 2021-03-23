.class public Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/phone/service/PhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhoneReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "yummy"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$500(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 204
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    const/16 p2, 0x363

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$302(Lcom/neusoft/qdrivelink/phone/service/PhoneService;I)I

    const-string p1, "yummy000"

    .line 205
    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p1, "yummy0001"

    .line 207
    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    .line 211
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$400(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 212
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$400(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    goto/16 :goto_2

    .line 216
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->tm:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p1

    .line 217
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "yummy0002"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    if-eq p1, p2, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    goto/16 :goto_2

    .line 257
    :cond_2
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v0, p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$302(Lcom/neusoft/qdrivelink/phone/service/PhoneService;I)I

    .line 258
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$602(Lcom/neusoft/qdrivelink/phone/service/PhoneService;Z)Z

    .line 259
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    const/16 p2, 0x364

    if-eqz p1, :cond_3

    const-string p1, "yummy0002offhook"

    .line 260
    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 261
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    .line 264
    :cond_3
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$400(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 265
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$400(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    goto/16 :goto_2

    .line 244
    :cond_4
    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$300(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)I

    move-result p2

    if-eq p2, p1, :cond_c

    .line 245
    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p2, p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$302(Lcom/neusoft/qdrivelink/phone/service/PhoneService;I)I

    .line 246
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    const/16 p2, 0x361

    if-eqz p1, :cond_5

    .line 247
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    .line 250
    :cond_5
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$400(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 251
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$400(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    goto/16 :goto_2

    .line 220
    :cond_6
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yummy0005"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$100(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$300(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$600(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 222
    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$600(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$300(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)I

    move-result p2

    if-eq p2, p1, :cond_b

    .line 223
    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p2, p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$302(Lcom/neusoft/qdrivelink/phone/service/PhoneService;I)I

    .line 224
    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p2

    const/16 v0, 0x362

    if-eqz p2, :cond_9

    .line 225
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yummy0003"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 226
    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p2

    invoke-interface {p2, v0}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    .line 228
    :cond_9
    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$100(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 229
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yummy0004"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 230
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$100(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    .line 233
    :cond_a
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$400(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 234
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$400(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    goto :goto_2

    .line 239
    :cond_b
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    iget-object p2, p2, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->runnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    :goto_2
    return-void
.end method
