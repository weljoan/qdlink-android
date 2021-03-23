.class Lcom/neusoft/qdrivelink/phone/PhoneView$6;
.super Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;
.source "PhoneView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView;->initFrequentView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter<",
        "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhoneView;Ljava/util/List;Landroid/content/Context;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$6;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    iput-object p3, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$6;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;Lcom/neusoft/qdrivelink/phone/bean/SortBean;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 696
    new-instance v3, Lcom/neusoft/qdrivelink/phone/PhoneView$6$1;

    invoke-direct {v3, v0, v2}, Lcom/neusoft/qdrivelink/phone/PhoneView$6$1;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView$6;Lcom/neusoft/qdrivelink/phone/bean/SortBean;)V

    .line 702
    invoke-virtual/range {p2 .. p2}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getNumber()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f070119

    .line 703
    invoke-virtual {v1, v5}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f07004d

    .line 704
    invoke-virtual {v1, v6}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    const v7, 0x7f070166

    .line 705
    invoke-virtual {v1, v7}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f07011a

    .line 706
    invoke-virtual {v1, v8}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f07011b

    .line 707
    invoke-virtual {v1, v9}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f070081

    .line 708
    invoke-virtual {v1, v10}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const v11, 0x7f07011c

    .line 709
    invoke-virtual {v1, v11}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const v12, 0x7f07007e

    .line 710
    invoke-virtual {v1, v12}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object v12

    .line 711
    new-instance v13, Lcom/neusoft/qdrivelink/phone/PhoneView$6$2;

    invoke-direct {v13, v0, v2}, Lcom/neusoft/qdrivelink/phone/PhoneView$6$2;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView$6;Lcom/neusoft/qdrivelink/phone/bean/SortBean;)V

    invoke-virtual {v5, v13}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 721
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    const/4 v14, 0x4

    const/16 v15, 0x8

    if-eqz v13, :cond_4

    .line 722
    invoke-virtual {v5, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 723
    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 724
    invoke-virtual {v9, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 725
    invoke-virtual {v10, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 726
    invoke-virtual {v11, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 727
    new-instance v2, Lcom/neusoft/qdrivelink/phone/PhoneView$6$3;

    invoke-direct {v2, v0}, Lcom/neusoft/qdrivelink/phone/PhoneView$6$3;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView$6;)V

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 735
    iget-object v2, v0, Lcom/neusoft/qdrivelink/phone/PhoneView$6;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v14, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/16 v3, 0x8

    .line 737
    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/16 v4, 0x8

    .line 738
    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    if-ne v2, v3, :cond_2

    const/4 v15, 0x0

    .line 739
    :cond_2
    invoke-virtual {v12, v15}, Landroid/view/View;->setVisibility(I)V

    .line 740
    iget-object v1, v1, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->itemView:Landroid/view/View;

    if-ne v2, v3, :cond_3

    new-instance v14, Lcom/neusoft/qdrivelink/phone/PhoneView$6$4;

    invoke-direct {v14, v0}, Lcom/neusoft/qdrivelink/phone/PhoneView$6$4;-><init>(Lcom/neusoft/qdrivelink/phone/PhoneView$6;)V

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_2
    invoke-virtual {v1, v14}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_7

    .line 752
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getTitle_icon_str()Ljava/lang/String;

    .line 754
    invoke-virtual {v6, v15}, Landroid/widget/Button;->setVisibility(I)V

    .line 755
    invoke-virtual {v7, v15}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v6, 0x0

    .line 756
    invoke-virtual {v12, v6}, Landroid/view/View;->setVisibility(I)V

    .line 757
    invoke-virtual {v11, v6}, Landroid/widget/TextView;->setVisibility(I)V

    const v7, 0x7f0b0093

    .line 759
    invoke-virtual {v8, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 763
    iget-object v7, v0, Lcom/neusoft/qdrivelink/phone/PhoneView$6;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v7}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const v12, 0x7f0b0077

    .line 765
    invoke-virtual {v5, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 766
    iget-object v1, v1, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->itemView:Landroid/view/View;

    if-ne v7, v14, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v1, 0x2

    if-ne v7, v1, :cond_6

    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    const/16 v3, 0x8

    .line 767
    :goto_4
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    if-ne v7, v14, :cond_7

    const/4 v3, 0x0

    goto :goto_5

    :cond_7
    const/16 v3, 0x8

    .line 768
    :goto_5
    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-ne v7, v1, :cond_8

    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    const/16 v1, 0x8

    .line 769
    :goto_6
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setVisibility(I)V

    if-ne v7, v14, :cond_9

    const/4 v15, 0x0

    .line 770
    :cond_9
    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 772
    invoke-virtual/range {p2 .. p2}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    invoke-virtual/range {p2 .. p2}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 774
    invoke-virtual {v11, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    return-void
.end method

.method public bridge synthetic convert(Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;Ljava/lang/Object;I)V
    .locals 0

    .line 688
    check-cast p2, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/phone/PhoneView$6;->convert(Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;Lcom/neusoft/qdrivelink/phone/bean/SortBean;I)V

    return-void
.end method

.method public getLayoutId(I)I
    .locals 0

    const p1, 0x7f0a002b

    return p1
.end method
