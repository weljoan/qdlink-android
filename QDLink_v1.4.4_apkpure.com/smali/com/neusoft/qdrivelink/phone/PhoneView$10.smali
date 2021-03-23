.class Lcom/neusoft/qdrivelink/phone/PhoneView$10;
.super Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;
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
        "Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter<",
        "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhoneView;Ljava/util/List;)V
    .locals 0

    .line 857
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$10;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-direct {p0, p2}, Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;Lcom/neusoft/qdrivelink/phone/bean/SortBean;I)V
    .locals 4

    const p3, 0x7f07011b

    .line 865
    invoke-virtual {p1, p3}, Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 866
    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 867
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 871
    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getNumber()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$10;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data.getNumber()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 873
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 874
    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$10;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/phone/PhoneView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0400aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    .line 876
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$10;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v2, p3

    const/16 v3, 0x11

    invoke-virtual {v0, v1, p3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    const p3, 0x7f07011c

    .line 879
    invoke-virtual {p1, p3}, Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 880
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 883
    iget-object p1, p1, Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;->itemView:Landroid/view/View;

    new-instance p3, Lcom/neusoft/qdrivelink/phone/PhoneView$10$1;

    invoke-direct {p3, p0, p2}, Lcom/neusoft/qdrivelink/phone/PhoneView$10$1;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView$10;Lcom/neusoft/qdrivelink/phone/bean/SortBean;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic convert(Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;Ljava/lang/Object;I)V
    .locals 0

    .line 857
    check-cast p2, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/phone/PhoneView$10;->convert(Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;Lcom/neusoft/qdrivelink/phone/bean/SortBean;I)V

    return-void
.end method

.method public getLayoutId(I)I
    .locals 0

    const p1, 0x7f0a002c

    return p1
.end method
