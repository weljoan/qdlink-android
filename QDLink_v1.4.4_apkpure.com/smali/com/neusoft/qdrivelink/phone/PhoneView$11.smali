.class Lcom/neusoft/qdrivelink/phone/PhoneView$11;
.super Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;
.source "PhoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView;->initDialPlate(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter<",
        "Lcom/neusoft/qdrivelink/phone/bean/NumBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhoneView;Ljava/util/List;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$11;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-direct {p0, p2}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;Lcom/neusoft/qdrivelink/phone/bean/NumBean;I)V
    .locals 1

    const p3, 0x7f070177

    .line 904
    invoke-virtual {p1, p3}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iget-object v0, p2, Lcom/neusoft/qdrivelink/phone/bean/NumBean;->number:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 915
    iget-object p1, p1, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->itemView:Landroid/view/View;

    new-instance p3, Lcom/neusoft/qdrivelink/phone/PhoneView$11$1;

    invoke-direct {p3, p0, p2}, Lcom/neusoft/qdrivelink/phone/PhoneView$11$1;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView$11;Lcom/neusoft/qdrivelink/phone/bean/NumBean;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;Ljava/lang/Object;I)V
    .locals 0

    .line 896
    check-cast p2, Lcom/neusoft/qdrivelink/phone/bean/NumBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/phone/PhoneView$11;->convert(Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;Lcom/neusoft/qdrivelink/phone/bean/NumBean;I)V

    return-void
.end method

.method public getLayoutId(I)I
    .locals 0

    const p1, 0x7f0a0029

    return p1
.end method
