.class Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$5;
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

    .line 209
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$5;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 213
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$5;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->access$100(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)Landroid/widget/EditText;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
