.class Lcom/neusoft/qdrivelink/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    .line 171
    iput-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$4;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 12

    .line 175
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const v1, 0x123001

    if-eq v0, v1, :cond_1

    const-string v1, "testwang"

    const-string v2, ""

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "MainAcitivty myHandler != null 0x00105 open permission"

    .line 236
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance p1, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity$4;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-direct {p1, v0}, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;-><init>(Landroid/content/Context;)V

    .line 238
    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->checkAndShow()V

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "MainAcitivty myHandler != null 0x00104"

    .line 210
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p1, "MainAcitivty myHandler != null 0x00104 case 0"

    .line 213
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    new-instance p1, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity$4;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-direct {p1, v0}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;-><init>(Landroid/content/Context;)V

    sput-object p1, Lcom/neusoft/qdrivelink/MainActivity;->customLoadingDialog:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    .line 217
    sget-object p1, Lcom/neusoft/qdrivelink/MainActivity;->customLoadingDialog:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->showCustomDialog()V

    goto/16 :goto_0

    .line 195
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "qdriveFactoryName"

    .line 197
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "qdriveCarType"

    .line 198
    invoke-virtual {p1, v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "link connected: qdriveFactoryName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",qdriveCarType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v1, p0, Lcom/neusoft/qdrivelink/MainActivity$4;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    const/4 v2, 0x2

    new-instance v3, Lcom/neusoft/qdrivelink/MainActivity$4$1;

    invoke-direct {v3, p0}, Lcom/neusoft/qdrivelink/MainActivity$4$1;-><init>(Lcom/neusoft/qdrivelink/MainActivity$4;)V

    invoke-static {v1, v0, p1, v2, v3}, Lcom/neusoft/qdrivelink/MainActivity;->checkLinkAppDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;)V

    goto/16 :goto_0

    .line 181
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v0, "linkUrl"

    .line 183
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "packagetName"

    .line 184
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "currVersion"

    .line 185
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "linkSize"

    .line 186
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "downloadPath"

    .line 187
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "carType"

    .line 188
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "linkCheck"

    .line 189
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 190
    iget-object v4, p0, Lcom/neusoft/qdrivelink/MainActivity$4;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    move-object v3, v4

    invoke-static/range {v3 .. v11}, Lcom/neusoft/qdrivelink/MainActivity;->access$400(Lcom/neusoft/qdrivelink/MainActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :pswitch_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$4;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/MainActivity;->access$200(Lcom/neusoft/qdrivelink/MainActivity;)Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    move-result-object v0

    invoke-static {p1, p1, v0}, Lcom/neusoft/qdrivelink/MainActivity;->access$300(Lcom/neusoft/qdrivelink/MainActivity;Landroid/content/Context;Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V

    goto :goto_0

    .line 242
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$4;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {p1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/ScreenCaptureManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->changeInApp()V

    goto :goto_0

    .line 233
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$4;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {p1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/ScreenCaptureManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->stopNetworkCommunication()V

    goto :goto_0

    .line 224
    :cond_3
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$4;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {p1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/ScreenCaptureManager;

    move-result-object p1

    sget-object v0, Lcom/neusoft/qdrivelink/MainActivity;->cl_parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/ScreenCaptureManager;->exitScreenCapture(Landroid/view/ViewGroup;)V

    .line 225
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    if-eqz p1, :cond_4

    const-string v0, "QDriveConn"

    const-string v1, "notifyChangeLayout baseLayoutView != null start"

    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    .line 229
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyChangeLayout baseLayoutView != null end MyApplication:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlag:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
