.class Lcom/neusoft/qdrivelink/phone/PhoneView$11$1;
.super Ljava/lang/Object;
.source "PhoneView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView$11;->convert(Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;Lcom/neusoft/qdrivelink/phone/bean/NumBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$11;

.field final synthetic val$data:Lcom/neusoft/qdrivelink/phone/bean/NumBean;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhoneView$11;Lcom/neusoft/qdrivelink/phone/bean/NumBean;)V
    .locals 0

    .line 915
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$11$1;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$11;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$11$1;->val$data:Lcom/neusoft/qdrivelink/phone/bean/NumBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 918
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$11$1;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$11;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/phone/PhoneView$11;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$11$1;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$11;

    iget-object v1, v1, Lcom/neusoft/qdrivelink/phone/PhoneView$11;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$11$1;->val$data:Lcom/neusoft/qdrivelink/phone/bean/NumBean;

    iget-object v1, v1, Lcom/neusoft/qdrivelink/phone/bean/NumBean;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
