.class Lcom/neusoft/qdrivelink/mine/setting/SettingView$5;
.super Ljava/lang/Object;
.source "SettingView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeCallBack;


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

    .line 394
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$5;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isNeedUpGrade(ILcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V
    .locals 2

    .line 397
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUpGrade:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "testwang"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 400
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x101

    .line 401
    iput v0, p1, Landroid/os/Message;->what:I

    .line 402
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$5;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {v0, p2}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$302(Lcom/neusoft/qdrivelink/mine/setting/SettingView;Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    .line 403
    iget-object p2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$5;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$000(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 405
    :cond_0
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x102

    .line 406
    iput p2, p1, Landroid/os/Message;->what:I

    .line 407
    iget-object p2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$5;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->access$000(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method
