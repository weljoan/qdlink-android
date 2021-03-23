.class Lcom/neusoft/qdrivelink/interconnection/AccessSettings$1;
.super Ljava/lang/Object;
.source "AccessSettings.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->checkAndShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/interconnection/AccessSettings;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/interconnection/AccessSettings;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/AccessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClickListener()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/AccessSettings;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->access$000(Lcom/neusoft/qdrivelink/interconnection/AccessSettings;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->dismissDialog()V

    .line 65
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/AccessSettings;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->access$100(Lcom/neusoft/qdrivelink/interconnection/AccessSettings;)Lcom/neusoft/qdrivelink/interconnection/AccessSettingsCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/AccessSettings;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->access$100(Lcom/neusoft/qdrivelink/interconnection/AccessSettings;)Lcom/neusoft/qdrivelink/interconnection/AccessSettingsCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivelink/interconnection/AccessSettingsCallback;->requestUpdateCallback(I)V

    :cond_0
    return-void
.end method

.method public onConfirmClickListener()V
    .locals 2

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.USAGE_ACCESS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/AccessSettings;

    iget-object v1, v1, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 55
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/AccessSettings;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->access$000(Lcom/neusoft/qdrivelink/interconnection/AccessSettings;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->dismissDialog()V

    .line 56
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/AccessSettings;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->access$100(Lcom/neusoft/qdrivelink/interconnection/AccessSettings;)Lcom/neusoft/qdrivelink/interconnection/AccessSettingsCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/AccessSettings;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->access$100(Lcom/neusoft/qdrivelink/interconnection/AccessSettings;)Lcom/neusoft/qdrivelink/interconnection/AccessSettingsCallback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivelink/interconnection/AccessSettingsCallback;->requestUpdateCallback(I)V

    :cond_0
    return-void
.end method
