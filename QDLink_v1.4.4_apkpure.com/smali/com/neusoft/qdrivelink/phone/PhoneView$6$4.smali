.class Lcom/neusoft/qdrivelink/phone/PhoneView$6$4;
.super Ljava/lang/Object;
.source "PhoneView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView$6;->convert(Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;Lcom/neusoft/qdrivelink/phone/bean/SortBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$6;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhoneView$6;)V
    .locals 0

    .line 740
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$6$4;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 743
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$6$4;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$6;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/phone/PhoneView$6;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2400(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 744
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$6$4;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$6;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/phone/PhoneView$6;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$6$4;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$6;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/phone/PhoneView$6;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2200(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2500(Lcom/neusoft/qdrivelink/phone/PhoneView;I)V

    return-void
.end method
