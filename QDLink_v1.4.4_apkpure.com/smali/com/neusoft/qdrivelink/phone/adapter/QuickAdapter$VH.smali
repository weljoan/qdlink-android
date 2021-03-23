.class public Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "QuickAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "VH"
.end annotation


# instance fields
.field private mConvertView:Landroid/view/View;

.field private mViews:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 51
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->mConvertView:Landroid/view/View;

    .line 52
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->mViews:Landroid/util/SparseArray;

    return-void
.end method

.method public static get(Landroid/view/ViewGroup;I)Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;
    .locals 2

    .line 56
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 57
    new-instance p1, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;-><init>(Landroid/view/View;)V

    return-object p1
.end method


# virtual methods
.method public getView(I)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->mConvertView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->mViews:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public setText(ILjava/lang/String;)V
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
