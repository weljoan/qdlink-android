.class public Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "PhoneOnlineView.java"


# instance fields
.field private conn:Landroid/content/ServiceConnection;

.field private myPhoneStateListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

.field private phoneBinder:Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1;-><init>(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->myPhoneStateListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    .line 83
    new-instance v0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$2;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$2;-><init>(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->conn:Landroid/content/ServiceConnection;

    .line 30
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 62
    new-instance p2, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1;-><init>(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->myPhoneStateListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    .line 83
    new-instance p2, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$2;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$2;-><init>(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->conn:Landroid/content/ServiceConnection;

    .line 36
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    new-instance p2, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1;-><init>(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->myPhoneStateListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    .line 83
    new-instance p2, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$2;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$2;-><init>(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->conn:Landroid/content/ServiceConnection;

    .line 42
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance p2, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1;-><init>(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->myPhoneStateListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    .line 83
    new-instance p2, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$2;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$2;-><init>(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->conn:Landroid/content/ServiceConnection;

    .line 47
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->pageBack()V

    return-void
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)Landroid/content/Context;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->phoneBinder:Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    return-object p0
.end method

.method static synthetic access$202(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->phoneBinder:Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->myPhoneStateListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)V
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->pageBack()V

    return-void
.end method

.method private initService()V
    .locals 4

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 107
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->conn:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0a003b

    .line 57
    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->initService()V

    .line 59
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public viewDestroy()V
    .locals 2

    .line 112
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewDestroy()V

    .line 113
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->conn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public viewResume()V
    .locals 1

    .line 118
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    .line 119
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->phoneBinder:Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->getPhoneState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->pageBack()V

    :cond_0
    return-void
.end method
