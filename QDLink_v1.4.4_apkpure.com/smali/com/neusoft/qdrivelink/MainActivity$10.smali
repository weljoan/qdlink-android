.class final Lcom/neusoft/qdrivelink/MainActivity$10;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeLinkCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/MainActivity;->checkLinkAppDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$checkLinkAppResultCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$finalCarType:Ljava/lang/String;

.field final synthetic val$finalFactoryName:Ljava/lang/String;

.field final synthetic val$localPath:Ljava/lang/String;

.field final synthetic val$localPathNoName:Ljava/lang/String;

.field final synthetic val$showType:I


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 663
    iput-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$10;->val$file:Ljava/io/File;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/MainActivity$10;->val$localPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/neusoft/qdrivelink/MainActivity$10;->val$checkLinkAppResultCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;

    iput p4, p0, Lcom/neusoft/qdrivelink/MainActivity$10;->val$showType:I

    iput-object p5, p0, Lcom/neusoft/qdrivelink/MainActivity$10;->val$localPathNoName:Ljava/lang/String;

    iput-object p6, p0, Lcom/neusoft/qdrivelink/MainActivity$10;->val$finalCarType:Ljava/lang/String;

    iput-object p7, p0, Lcom/neusoft/qdrivelink/MainActivity$10;->val$finalFactoryName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public linkUpGradeBean(ILcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V
    .locals 5

    const-string v0, ""

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkLinkAppOrListVersion isSuccess:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "testwang"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    const/4 v3, 0x1

    if-nez p1, :cond_3

    .line 671
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$10;->val$file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const-string p1, "true true true"

    .line 672
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    :try_start_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$10;->val$localPath:Ljava/lang/String;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/upgrade/update/MD5Generator;->getMD5EncryptedFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 676
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->getApk_check()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 678
    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->getApk_check()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 690
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "false false false"

    .line 695
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 702
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$10;->val$checkLinkAppResultCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;

    invoke-interface {p1, v4}, Lcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;->checkLinkAppResult(I)V

    .line 703
    iget p1, p0, Lcom/neusoft/qdrivelink/MainActivity$10;->val$showType:I

    if-ne p1, v1, :cond_5

    .line 705
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 706
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 707
    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->getUrl()Ljava/lang/String;

    move-result-object v1

    const-string v2, "linkUrl"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packagetName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->getVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "currVersion"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->getSize()Ljava/lang/String;

    move-result-object v1

    const-string v2, "linkSize"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    iget-object v1, p0, Lcom/neusoft/qdrivelink/MainActivity$10;->val$localPathNoName:Ljava/lang/String;

    const-string v2, "downloadPath"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-object v1, p0, Lcom/neusoft/qdrivelink/MainActivity$10;->val$finalCarType:Ljava/lang/String;

    const-string v2, "carType"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 713
    iget-object v1, p0, Lcom/neusoft/qdrivelink/MainActivity$10;->val$finalFactoryName:Ljava/lang/String;

    const-string v2, "factoryName"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->getApk_check()Ljava/lang/String;

    move-result-object p2

    const-string v1, "linkCheck"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x102

    .line 715
    iput p2, p1, Landroid/os/Message;->what:I

    .line 716
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 717
    sget-object p2, Lcom/neusoft/qdrivelink/MainActivity;->myHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 720
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$10;->val$checkLinkAppResultCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;

    invoke-interface {p1, v3}, Lcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;->checkLinkAppResult(I)V

    goto :goto_2

    :cond_3
    if-ne p1, v3, :cond_4

    .line 723
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$10;->val$checkLinkAppResultCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;

    invoke-interface {p1, v3}, Lcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;->checkLinkAppResult(I)V

    goto :goto_2

    .line 725
    :cond_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$10;->val$checkLinkAppResultCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;

    invoke-interface {p1, v1}, Lcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;->checkLinkAppResult(I)V

    :cond_5
    :goto_2
    return-void
.end method
