.class Lcom/neusoft/qdrivelink/music/MusicView$1$2;
.super Ljava/lang/Object;
.source "MusicView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/MusicView$1;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/neusoft/qdrivelink/music/MusicView$1;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/MusicView$1;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView$1$2;->this$1:Lcom/neusoft/qdrivelink/music/MusicView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3

    .line 325
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView$1$2;->this$1:Lcom/neusoft/qdrivelink/music/MusicView$1;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$500(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView$1$2;->this$1:Lcom/neusoft/qdrivelink/music/MusicView$1;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/MusicView;->access$400(Lcom/neusoft/qdrivelink/music/MusicView;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/sdk/wangyilibinter/bean/RankListBean;

    invoke-virtual {v0}, Lcom/neusoft/sdk/wangyilibinter/bean/RankListBean;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key_songid"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView$1$2;->this$1:Lcom/neusoft/qdrivelink/music/MusicView$1;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$500(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/os/Bundle;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView$1$2;->this$1:Lcom/neusoft/qdrivelink/music/MusicView$1;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/MusicView;->access$400(Lcom/neusoft/qdrivelink/music/MusicView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/sdk/wangyilibinter/bean/RankListBean;

    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/RankListBean;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "key_aublmname"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView$1$2;->this$1:Lcom/neusoft/qdrivelink/music/MusicView$1;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    new-instance p2, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView$1$2;->this$1:Lcom/neusoft/qdrivelink/music/MusicView$1;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/MusicView;->access$600(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/MusicView$1$2;->this$1:Lcom/neusoft/qdrivelink/music/MusicView$1;

    iget-object v2, v2, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/music/MusicView;->access$500(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {p2, v0, v2}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-static {p1, v1, p2, v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$700(Lcom/neusoft/qdrivelink/music/MusicView;ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    return-void
.end method
