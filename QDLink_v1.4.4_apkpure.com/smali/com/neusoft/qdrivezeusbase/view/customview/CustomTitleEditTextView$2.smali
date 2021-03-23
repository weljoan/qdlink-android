.class Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$2;
.super Ljava/lang/Object;
.source "CustomTitleEditTextView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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

    .line 155
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p1, "et_search_key on focus"

    .line 159
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 164
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->showMic()V

    :cond_0
    return-void
.end method
