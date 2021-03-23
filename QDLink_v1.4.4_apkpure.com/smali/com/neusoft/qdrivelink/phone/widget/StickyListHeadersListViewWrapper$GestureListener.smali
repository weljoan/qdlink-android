.class Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$GestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "StickyListHeadersListViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;


# direct methods
.method private constructor <init>(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$GestureListener;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$1;)V
    .locals 0

    .line 244
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$GestureListener;-><init>(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)V

    return-void
.end method


# virtual methods
.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 249
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$GestureListener;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->access$002(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;Z)Z

    .line 250
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$GestureListener;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    .line 252
    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->access$100(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)Landroid/graphics/Rect;

    move-result-object v0

    .line 251
    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
