.class Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "OnLineMusicListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$1;->this$1:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    if-eqz p1, :cond_1

    .line 199
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->onLineMusicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 200
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$1;->this$1:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->val$gridLayoutManagerlocal:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1
.end method
