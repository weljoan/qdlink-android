.class Lcom/neusoft/qdrivelink/phone/PhoneView$12;
.super Ljava/lang/Object;
.source "PhoneView.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView;->initDialPlate(Landroid/content/Context;)V
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

    .line 939
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$12;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    .line 942
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$12;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    .line 946
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$12;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/TextView;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v0
.end method
