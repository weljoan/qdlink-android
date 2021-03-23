.class public interface abstract Lcom/neusoft/qdrivelink/music/search/SearchMusicContract$View;
.super Ljava/lang/Object;
.source "SearchMusicContract.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/view/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/music/search/SearchMusicContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/neusoft/qdrivezeusbase/view/BaseView<",
        "Lcom/neusoft/qdrivelink/music/search/SearchMusicContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract responseSearchMusicList(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;)V"
        }
    .end annotation
.end method
