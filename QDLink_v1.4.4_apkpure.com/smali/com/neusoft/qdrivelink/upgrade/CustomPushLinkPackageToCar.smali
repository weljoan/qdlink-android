.class public Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "CustomPushLinkPackageToCar.java"


# static fields
.field public static final CHANGE_FIRST:I = 0xbb8

.field public static final CHANGE_SECOND:I = 0x251c

.field public static final TIME_FIRST:I = 0x3e8

.field public static final TIME_SECOND:I = 0x4e20

.field public static final TIME_SLEEP:I = 0xa

.field public static myHandler:Landroid/os/Handler;


# instance fields
.field private hd:Landroid/os/Handler;

.field private isError:Z

.field private isFinishSchedule:I

.field private isfinish:Z

.field private pb:Landroid/widget/ProgressBar;

.field run:Ljava/lang/Runnable;

.field private thread:Ljava/lang/Thread;

.field private tv:Landroid/widget/TextView;

.field private tv_detail:Landroid/widget/TextView;

.field private tv_wanning:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    const v0, 0x186a0

    .line 30
    iput v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->isFinishSchedule:I

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->isfinish:Z

    .line 32
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->isError:Z

    .line 136
    new-instance v0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$3;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$3;-><init>(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->run:Ljava/lang/Runnable;

    .line 44
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p2, 0x186a0

    .line 30
    iput p2, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->isFinishSchedule:I

    const/4 p2, 0x0

    .line 31
    iput-boolean p2, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->isfinish:Z

    .line 32
    iput-boolean p2, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->isError:Z

    .line 136
    new-instance p2, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$3;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$3;-><init>(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->run:Ljava/lang/Runnable;

    .line 50
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x186a0

    .line 30
    iput p2, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->isFinishSchedule:I

    const/4 p2, 0x0

    .line 31
    iput-boolean p2, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->isfinish:Z

    .line 32
    iput-boolean p2, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->isError:Z

    .line 136
    new-instance p2, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$3;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$3;-><init>(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->run:Ljava/lang/Runnable;

    .line 55
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->pb:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->isFinishSchedule:I

    return p0
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->isfinish:Z

    return p0
.end method

.method static synthetic access$202(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->isfinish:Z

    return p1
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Z
    .locals 0

    .line 22
    iget-boolean p0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->isError:Z

    return p0
.end method

.method static synthetic access$302(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;Z)Z
    .locals 0

    .line 22
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->isError:Z

    return p1
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Ljava/lang/Thread;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->thread:Ljava/lang/Thread;

    return-object p0
.end method

.method static synthetic access$500(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->hd:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->tv_wanning:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->tv_detail:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Landroid/widget/TextView;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->trackProgress()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->tv_wanning:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    iget-object v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->tv_detail:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->tv:Landroid/widget/TextView;

    const v1, 0x7f0d0026

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 80
    iget-object v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->pb:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 81
    iget-object v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->pb:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 82
    new-instance v0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$1;-><init>(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->hd:Landroid/os/Handler;

    .line 104
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;-><init>(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object v0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->myHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->run:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->thread:Ljava/lang/Thread;

    .line 133
    iget-object v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->thread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0a001d

    .line 64
    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    const p1, 0x7f07010c

    .line 67
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->pb:Landroid/widget/ProgressBar;

    const p1, 0x7f070184

    .line 68
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->tv:Landroid/widget/TextView;

    const p1, 0x7f070191

    .line 69
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->tv_wanning:Landroid/widget/TextView;

    const p1, 0x7f07016f

    .line 70
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->tv_detail:Landroid/widget/TextView;

    .line 72
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->init()V

    return-void
.end method

.method private trackProgress()V
    .locals 7

    const/4 v0, 0x0

    .line 150
    :cond_0
    :goto_0
    :try_start_0
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v2, 0xa

    const-string v4, "XBB"

    const/16 v5, 0x3e8

    if-gt v0, v5, :cond_1

    .line 152
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v0, v0, 0xa

    .line 154
    div-int/lit8 v2, v0, 0xa

    mul-int/lit16 v2, v2, 0x7530

    div-int/2addr v2, v5

    iput v2, v1, Landroid/os/Message;->what:I

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Progress\u524d\u90e8\u8fdb\u5ea6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v2, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->hd:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->hd:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    const/16 v6, 0x4e20

    if-le v0, v5, :cond_2

    if-gt v0, v6, :cond_2

    .line 159
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v0, v0, 0xa

    add-int/lit16 v2, v0, -0x3e8

    .line 161
    div-int/lit8 v2, v2, 0xa

    add-int/lit8 v2, v2, -0x1

    mul-int/lit8 v2, v2, 0x3

    add-int/lit16 v2, v2, 0xbb8

    .line 163
    iput v2, v1, Landroid/os/Message;->what:I

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Progress\u4e2d\u95f4\u8fdb\u5ea6"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v2, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->hd:Landroid/os/Handler;

    if-eqz v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->hd:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    if-le v0, v6, :cond_0

    const-string v1, "Progress\u5927\u4e8eTIME_SECOND"

    .line 168
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    return-void
.end method


# virtual methods
.method public dismissCustomDialog()V
    .locals 2

    .line 190
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->dismissDialog()V

    .line 191
    iget-object v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->hd:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 192
    iget-object v1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->run:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->hd:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public finishByAnim()V
    .locals 0

    .line 181
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->dismissDialog()V

    return-void
.end method

.method public showCustomDialog()V
    .locals 0

    .line 186
    invoke-virtual {p0, p0}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->showDialog(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
