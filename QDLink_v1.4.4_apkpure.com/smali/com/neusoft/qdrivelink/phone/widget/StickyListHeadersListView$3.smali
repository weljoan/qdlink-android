.class Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$3;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->dispatchDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$3;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$3;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$501(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$600(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;I)V

    return-void
.end method
