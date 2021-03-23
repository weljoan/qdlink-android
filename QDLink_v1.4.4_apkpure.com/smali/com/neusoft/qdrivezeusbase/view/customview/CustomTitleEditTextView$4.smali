.class Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$4;
.super Ljava/lang/Object;
.source "CustomTitleEditTextView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 202
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->access$100(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->access$400(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$SearchClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->access$400(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$SearchClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$SearchClickListener;->searchKeyChange(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 190
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->access$100(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 191
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 192
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->access$200(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->access$300(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 195
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->access$200(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->access$300(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
