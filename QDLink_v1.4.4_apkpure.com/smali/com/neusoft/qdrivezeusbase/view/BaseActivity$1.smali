.class Lcom/neusoft/qdrivezeusbase/view/BaseActivity$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/view/BaseActivity;->addSoftInputListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivezeusbase/view/BaseActivity;

.field final synthetic val$decorView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/view/BaseActivity;Landroid/view/View;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/BaseActivity$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/BaseActivity;

    iput-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/BaseActivity$1;->val$decorView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 141
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 142
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/BaseActivity$1;->val$decorView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 143
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    .line 144
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/BaseActivity$1;->val$decorView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 146
    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x2

    if-le v1, v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/BaseActivity$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/BaseActivity;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;->access$000(Lcom/neusoft/qdrivezeusbase/view/BaseActivity;)V

    :cond_0
    return-void
.end method
