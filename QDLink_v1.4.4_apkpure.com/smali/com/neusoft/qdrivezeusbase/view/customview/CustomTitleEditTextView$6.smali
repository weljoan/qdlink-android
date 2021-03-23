.class Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$6;
.super Ljava/lang/Object;
.source "CustomTitleEditTextView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 217
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$6;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 224
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$6;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->access$400(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$SearchClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 225
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$6;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->access$400(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$SearchClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$6;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->access$100(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$SearchClickListener;->searchClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
