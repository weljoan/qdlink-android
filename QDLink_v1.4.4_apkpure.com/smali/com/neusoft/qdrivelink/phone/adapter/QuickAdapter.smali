.class public abstract Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "QuickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;",
        ">;"
    }
.end annotation


# instance fields
.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;->mDatas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract convert(Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public getItemCount()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public abstract getLayoutId(I)I
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 12
    check-cast p1, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;

    invoke-virtual {p0, p1, p2}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;->onBindViewHolder(Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;I)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;->convert(Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;
    .locals 0

    .line 23
    invoke-virtual {p0, p2}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;->getLayoutId(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->get(Landroid/view/ViewGroup;I)Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;

    move-result-object p1

    return-object p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 76
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;->mDatas:Ljava/util/List;

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method
