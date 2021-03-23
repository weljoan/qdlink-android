.class Lcom/neusoft/qdrivelink/mine/setting/SettingView$6;
.super Ljava/lang/Object;
.source "SettingView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/mine/setting/SettingView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$6;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkLinkAppResult(I)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/16 v1, 0x108

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 431
    iput v1, p1, Landroid/os/Message;->what:I

    .line 432
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$6;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$000(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 425
    :cond_1
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 426
    iput v1, p1, Landroid/os/Message;->what:I

    .line 427
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$6;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$000(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 420
    :cond_2
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x107

    .line 421
    iput v0, p1, Landroid/os/Message;->what:I

    .line 422
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$6;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$000(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
