.class Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$3;
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

    .line 169
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$3;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    const-string p1, "et_search_key on click"

    .line 172
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$3;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->showMic()V

    return-void
.end method
