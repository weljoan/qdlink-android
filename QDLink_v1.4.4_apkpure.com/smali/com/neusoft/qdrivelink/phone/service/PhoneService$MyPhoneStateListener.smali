.class public Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "PhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/phone/service/PhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    .line 151
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto/16 :goto_2

    .line 183
    :cond_0
    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p2, p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$302(Lcom/neusoft/qdrivelink/phone/service/PhoneService;I)I

    .line 184
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    const/16 p2, 0x364

    if-eqz p1, :cond_1

    .line 185
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    .line 188
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$400(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 189
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$400(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    goto/16 :goto_2

    .line 170
    :cond_2
    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$300(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)I

    move-result p2

    if-eq p2, p1, :cond_9

    .line 172
    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p2, p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$302(Lcom/neusoft/qdrivelink/phone/service/PhoneService;I)I

    .line 173
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    const/16 p2, 0x361

    if-eqz p1, :cond_3

    .line 174
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    .line 177
    :cond_3
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$400(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 178
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$400(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    goto/16 :goto_2

    .line 154
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yummy0007"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$100(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$300(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 155
    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$300(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)I

    move-result p2

    if-eq p2, p1, :cond_9

    .line 156
    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p2, p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$302(Lcom/neusoft/qdrivelink/phone/service/PhoneService;I)I

    .line 157
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    const/16 p2, 0x362

    if-eqz p1, :cond_7

    .line 158
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    .line 160
    :cond_7
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$100(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 161
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$100(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    .line 164
    :cond_8
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$400(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 165
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$400(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;->state(I)V

    :cond_9
    :goto_2
    return-void
.end method
