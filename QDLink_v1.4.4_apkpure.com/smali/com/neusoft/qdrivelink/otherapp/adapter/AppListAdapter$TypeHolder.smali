.class public Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "AppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TypeHolder"
.end annotation


# instance fields
.field private cl_app_adapter:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070062
    .end annotation
.end field

.field private iv_app_icon:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700ad
    .end annotation
.end field

.field private iv_app_icon_bg:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700ae
    .end annotation
.end field

.field final synthetic this$0:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

.field private tv_app_name:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070168
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;Landroid/view/View;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;->this$0:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    .line 158
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 159
    invoke-static {p0, p2}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;->iv_app_icon:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;)Landroid/widget/TextView;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;->tv_app_name:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;)Landroid/widget/ImageView;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;->iv_app_icon_bg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 143
    iget-object p0, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;->cl_app_adapter:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method
