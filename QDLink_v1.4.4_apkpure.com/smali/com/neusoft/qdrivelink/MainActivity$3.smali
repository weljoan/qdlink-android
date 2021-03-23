.class Lcom/neusoft/qdrivelink/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/interconnection/AccessSettingsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/MainActivity;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/MainActivity;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$3;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestUpdateCallback(I)V
    .locals 4

    .line 153
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$3;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    const-string v0, ""

    const-string v1, "key_save_factory_name"

    invoke-static {p1, v1, v0}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 154
    iget-object v1, p0, Lcom/neusoft/qdrivelink/MainActivity$3;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    const-string v2, "key_save_car_type"

    invoke-static {v1, v2, v0}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 156
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-lt v1, v2, :cond_0

    .line 157
    iget-object v1, p0, Lcom/neusoft/qdrivelink/MainActivity$3;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    const/4 v2, 0x2

    new-instance v3, Lcom/neusoft/qdrivelink/MainActivity$3$1;

    invoke-direct {v3, p0}, Lcom/neusoft/qdrivelink/MainActivity$3$1;-><init>(Lcom/neusoft/qdrivelink/MainActivity$3;)V

    invoke-static {v1, p1, v0, v2, v3}, Lcom/neusoft/qdrivelink/MainActivity;->checkLinkAppDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;)V

    :cond_0
    return-void
.end method
