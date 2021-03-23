.class public Lcom/neusoft/qdrivelink/friend/FriendPresenter;
.super Ljava/lang/Object;
.source "FriendPresenter.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/friend/FriendContract$Presenter;


# instance fields
.field private mFriendView:Lcom/neusoft/qdrivelink/friend/FriendView;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/friend/FriendView;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 16
    iput-object p1, p0, Lcom/neusoft/qdrivelink/friend/FriendPresenter;->mFriendView:Lcom/neusoft/qdrivelink/friend/FriendView;

    .line 17
    iget-object p1, p0, Lcom/neusoft/qdrivelink/friend/FriendPresenter;->mFriendView:Lcom/neusoft/qdrivelink/friend/FriendView;

    invoke-virtual {p1, p0}, Lcom/neusoft/qdrivelink/friend/FriendView;->setPresenter(Lcom/neusoft/qdrivelink/friend/FriendContract$Presenter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public start()V
    .locals 0

    return-void
.end method
