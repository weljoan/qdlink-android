.class public abstract Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SearchAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;",
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

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;->mDatas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract convert(Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;",
            "TT;I)V"
        }
    .end annotation
.end method

.method public getItemCount()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const p1, 0x7f0a002c

    return p1
.end method

.method public abstract getLayoutId(I)I
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 14
    check-cast p1, Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;

    invoke-virtual {p0, p1, p2}, Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;->onBindViewHolder(Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;I)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;->convert(Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 14
    invoke-virtual {p0, p1, p2}, Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;
    .locals 0

    .line 25
    invoke-virtual {p0, p2}, Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;->getLayoutId(I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;->get(Landroid/view/ViewGroup;I)Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;

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

    .line 74
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;->mDatas:Ljava/util/List;

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method
