.class Lcom/neusoft/qdrivelink/phone/PhoneView$5;
.super Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;
.source "PhoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView;->initRecentView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhoneView;Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$5;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    iput-object p3, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$5;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;Ljava/lang/Object;I)V
    .locals 0

    .line 621
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/phone/PhoneView$5;->convert(Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;Ljava/util/Map;I)V

    return-void
.end method

.method public convert(Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;Ljava/util/Map;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    const-string p3, "strNumber"

    .line 629
    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 631
    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->NumNamehashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 632
    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->NumNamehashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 634
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v0, p3

    :cond_1
    const-string v1, "type"

    .line 637
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "time"

    .line 638
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Date;

    const v2, 0x7f070174

    .line 640
    invoke-virtual {p1, v2}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f07016e

    .line 641
    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/Utils/DateFormateUtils;->getCallDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "call type"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 p2, -0x1

    .line 643
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const-string v0, "4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x3

    goto :goto_1

    :pswitch_1
    const-string v0, "3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x2

    goto :goto_1

    :pswitch_2
    const-string v0, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :pswitch_3
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x0

    :cond_2
    :goto_1
    const v0, 0x7f040054

    const v1, 0x7f0700a4

    if-eqz p2, :cond_5

    if-eq p2, v4, :cond_4

    const v0, 0x7f040081

    if-eq p2, v3, :cond_3

    .line 665
    invoke-virtual {p1, v1}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v1, 0x7f0b008c

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 666
    invoke-virtual {p1, v2}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$5;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$1700(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 655
    :cond_3
    invoke-virtual {p1, v1}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v1, 0x7f0b008d

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 656
    invoke-virtual {p1, v2}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$5;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$1600(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 649
    :cond_4
    invoke-virtual {p1, v1}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v1, 0x7f0b0089

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 650
    invoke-virtual {p1, v2}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$5;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$1500(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    .line 645
    :cond_5
    invoke-virtual {p1, v1}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    const v1, 0x7f0b0091

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 646
    invoke-virtual {p1, v2}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$5;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$1400(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 669
    :goto_2
    iget-object p1, p1, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->itemView:Landroid/view/View;

    new-instance p2, Lcom/neusoft/qdrivelink/phone/PhoneView$5$1;

    invoke-direct {p2, p0, p3}, Lcom/neusoft/qdrivelink/phone/PhoneView$5$1;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView$5;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLayoutId(I)I
    .locals 0

    const p1, 0x7f0a002d

    return p1
.end method
