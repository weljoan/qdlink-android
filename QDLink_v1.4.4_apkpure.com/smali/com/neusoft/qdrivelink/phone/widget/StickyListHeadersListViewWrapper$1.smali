.class Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$1;
.super Ljava/lang/Object;
.source "StickyListHeadersListViewWrapper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field startY:F

.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 42
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 43
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$1;->startY:F

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 45
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-static {p1, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->access$002(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;Z)Z

    .line 46
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->access$100(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->invalidate(Landroid/graphics/Rect;)V

    .line 48
    :cond_1
    :goto_0
    iget p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$1;->startY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->access$200(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 49
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 51
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-static {p1, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->access$002(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;Z)Z

    .line 52
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->access$100(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->invalidate(Landroid/graphics/Rect;)V

    .line 54
    :cond_3
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->access$300(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)Landroid/view/GestureDetector;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v0
.end method
