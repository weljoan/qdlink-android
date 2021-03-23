.class Lcom/neusoft/qdrivelink/phone/PhoneView$1$1;
.super Ljava/lang/Object;
.source "PhoneView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView$1;->state(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$1;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhoneView$1;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$1$1;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$1$1;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$1;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/phone/PhoneView$1;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$100(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/Utils/NumUtils;->simReady(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$1$1;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$1;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/phone/PhoneView$1;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    const/4 v1, 0x2

    new-instance v2, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;

    iget-object v3, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$1$1;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$1;

    iget-object v3, v3, Lcom/neusoft/qdrivelink/phone/PhoneView$1;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-virtual {v3}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$200(Lcom/neusoft/qdrivelink/phone/PhoneView;ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    :cond_0
    return-void
.end method
