.class Lcom/neusoft/qdrivelink/phone/PhoneView$1;
.super Ljava/lang/Object;
.source "PhoneView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;


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

    .line 101
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$1;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callLogChange()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$1;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$500(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$1;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$400(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->refreshCallLog(Landroid/content/Context;)V

    .line 138
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$1;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$500(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$1;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$600(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->callLastLog(Landroid/content/Context;)V

    .line 139
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$1;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public state(I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 106
    :pswitch_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$1;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "idle"

    .line 107
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 121
    :pswitch_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$1;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$300(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/neusoft/qdrivelink/phone/PhoneView$1$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/phone/PhoneView$1$1;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView$1;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x361
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
