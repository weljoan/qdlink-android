.class Lcom/neusoft/qdrivelink/music/playlist/PlayListView$2;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "PlayListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/playlist/PlayListView;

.field final synthetic val$gridLayoutManagerlocal:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$2;->this$0:Lcom/neusoft/qdrivelink/music/playlist/PlayListView;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$2;->val$gridLayoutManagerlocal:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    if-eqz p1, :cond_1

    .line 137
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    .line 138
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$2;->val$gridLayoutManagerlocal:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1
.end method
