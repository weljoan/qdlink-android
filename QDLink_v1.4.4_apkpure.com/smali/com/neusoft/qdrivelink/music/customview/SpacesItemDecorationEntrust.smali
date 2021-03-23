.class public abstract Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;
.super Ljava/lang/Object;
.source "SpacesItemDecorationEntrust.java"


# instance fields
.field protected leftRight:I

.field protected mDivider:Landroid/graphics/drawable/Drawable;

.field protected topBottom:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;->leftRight:I

    .line 26
    iput p2, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;->topBottom:I

    if-eqz p3, :cond_0

    .line 28
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;->mDivider:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method


# virtual methods
.method abstract getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
.end method

.method abstract onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
.end method
