.class public Lcom/neusoft/qdrivelink/otherapp/OtherAppView;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "OtherAppView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$View;
.implements Lcom/neusoft/qdrivelink/otherapp/inter/AppClickListener;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

.field private appDataAllList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;",
            ">;"
        }
    .end annotation
.end field

.field private appDataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private appDataSelectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;",
            ">;"
        }
    .end annotation
.end field

.field private customLoadingDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

.field private mPresenter:Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$Presenter;

.field private rv_app_list:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07012e
    .end annotation
.end field

.field private tv_app_add_finish:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070167
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataMap:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataAllList:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataSelectList:Ljava/util/ArrayList;

    .line 69
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 54
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataMap:Ljava/util/HashMap;

    .line 56
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataAllList:Ljava/util/ArrayList;

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataSelectList:Ljava/util/ArrayList;

    .line 74
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataMap:Ljava/util/HashMap;

    .line 56
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataAllList:Ljava/util/ArrayList;

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataSelectList:Ljava/util/ArrayList;

    .line 79
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataMap:Ljava/util/HashMap;

    .line 56
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataAllList:Ljava/util/ArrayList;

    .line 58
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataSelectList:Ljava/util/ArrayList;

    .line 84
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataAllList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$002(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataAllList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->refreshAppList()V

    return-void
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataSelectList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$202(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataSelectList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$Presenter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->mPresenter:Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$Presenter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)Ljava/util/HashMap;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataMap:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$402(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataMap:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic access$500(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->customLoadingDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    return-object p0
.end method

.method static synthetic access$600(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)Landroid/content/Context;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private appAddFinish(Landroid/widget/TextView;)V
    .locals 2
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f070167
        }
    .end annotation

    .line 44
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->tv_app_add_finish:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->setEditFlag(Z)V

    .line 46
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataSelectList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->setDataList(Ljava/util/ArrayList;)V

    .line 47
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->notifyDataSetChanged()V

    .line 48
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->rv_app_list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method private checkScreenOn()V
    .locals 3

    .line 244
    invoke-static {}, Lcom/neusoft/qdrivelink/MyApplication;->getMyApplication()Lcom/neusoft/qdrivelink/MyApplication;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x1000000a

    .line 247
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x2710

    .line 248
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 249
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method private initAppList()V
    .locals 4

    .line 103
    new-instance v0, Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver;

    invoke-direct {v0}, Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver;-><init>()V

    .line 104
    move-object v1, v0

    check-cast v1, Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver;

    new-instance v2, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$1;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$1;-><init>(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)V

    invoke-virtual {v1, v2}, Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver;->setBootCallBackListener(Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver$BootCallBackListener;)V

    .line 128
    iget-object v1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->tv_app_add_finish:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    .line 130
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 131
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "package"

    .line 132
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->getViewContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->getInstance()Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;-><init>(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)V

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    .line 155
    new-instance v0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataSelectList:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    .line 156
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->setEditFlag(Z)V

    .line 157
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    invoke-virtual {v0, p0}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->setAppClickListener(Lcom/neusoft/qdrivelink/otherapp/inter/AppClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->rv_app_list:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 161
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 162
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setOrientation(I)V

    .line 163
    iget-object v1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->rv_app_list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0a0039

    .line 93
    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 94
    new-instance p1, Lcom/neusoft/qdrivelink/otherapp/OtherAppPresenter;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppPresenter;-><init>(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)V

    .line 95
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    .line 96
    new-instance p1, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->customLoadingDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    .line 97
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->customLoadingDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->showCustomDialog()V

    .line 98
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->initAppList()V

    return-void
.end method

.method private refreshAppList()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    if-eqz v0, :cond_1

    .line 233
    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->isEditFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataAllList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->setDataList(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataSelectList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->setDataList(Ljava/util/ArrayList;)V

    .line 238
    :goto_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public addApp()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->tv_app_add_finish:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->setEditFlag(Z)V

    .line 226
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataAllList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->setDataList(Ljava/util/ArrayList;)V

    .line 227
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->notifyDataSetChanged()V

    .line 228
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->rv_app_list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public appOnClickListener(Ljava/lang/String;)V
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 190
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x10000000

    .line 195
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    invoke-static {}, Lcom/neusoft/qdrivelink/MyApplication;->getMyApplication()Lcom/neusoft/qdrivelink/MyApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/MyApplication;->startActivity(Landroid/content/Intent;)V

    .line 197
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->checkScreenOn()V

    .line 198
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/ScreenCaptureManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->changeOutApp()V

    return-void
.end method

.method public appOnSelectedListener(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;I)V
    .locals 3

    .line 205
    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 206
    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->setSelected(Z)V

    .line 207
    iget-object v1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataAllList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;

    invoke-virtual {v1, v0}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->setSelected(Z)V

    .line 208
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataSelectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 209
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->mPresenter:Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$Presenter;

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$Presenter;->deleteAppInfo(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 211
    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->setSelected(Z)V

    .line 212
    iget-object v1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataAllList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;

    invoke-virtual {v1, v0}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->setSelected(Z)V

    .line 213
    iget-object v1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataSelectList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 214
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->mPresenter:Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$Presenter;

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$Presenter;->addAppInfo(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;)V

    .line 217
    :goto_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->notifyItemChanged(I)V

    return-void
.end method

.method public setPresenter(Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$Presenter;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->mPresenter:Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$Presenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->setPresenter(Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$Presenter;)V

    return-void
.end method

.method public viewDestroy()V
    .locals 2

    .line 177
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewDestroy()V

    .line 178
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->tv_app_add_finish:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->setEditFlag(Z)V

    .line 180
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->appDataSelectList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->setDataList(Ljava/util/ArrayList;)V

    .line 181
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->adapter:Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public viewResume()V
    .locals 0

    .line 171
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    .line 172
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->refreshAppList()V

    return-void
.end method
