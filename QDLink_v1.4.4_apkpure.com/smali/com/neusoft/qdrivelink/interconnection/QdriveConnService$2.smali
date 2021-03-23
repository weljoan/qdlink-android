.class Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;
.super Ljava/lang/Object;
.source "QdriveConnService.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeLinkCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->notifyLinkUpgrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$localPath:Ljava/lang/String;

.field final synthetic val$localPathNoName:Ljava/lang/String;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 842
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->val$localPathNoName:Ljava/lang/String;

    iput-object p3, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->val$fileName:Ljava/lang/String;

    iput-object p4, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->val$file:Ljava/io/File;

    iput-object p5, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->val$localPath:Ljava/lang/String;

    iput-object p6, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->val$version:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public linkUpGradeBean(ILcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 845
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyLinkUpgrade checkLinkAppOrListVersion isSuccess:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",localPathNoName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->val$localPathNoName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",fileName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->val$fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "testwang"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "LinkCheck"

    const-string v4, "Version"

    const-string v5, ""

    if-nez v0, :cond_4

    .line 850
    iget-object v0, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    const-string v0, "notifyLinkUpgrade true true true"

    .line 851
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    :try_start_0
    iget-object v0, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->val$localPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/upgrade/update/MD5Generator;->getMD5EncryptedFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 855
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->getApk_check()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 857
    invoke-virtual/range {p2 .. p2}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->getApk_check()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 869
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "notifyLinkUpgrade false false false"

    .line 874
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eqz v6, :cond_3

    .line 885
    sget-object v0, Lcom/neusoft/qdrivelink/MainActivity;->myHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 887
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 888
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 889
    sget-object v3, Lcom/neusoft/qdrivelink/Constants;->FACTORY_NAME:Ljava/lang/String;

    const-string v4, "qdriveFactoryName"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    sget-object v3, Lcom/neusoft/qdrivelink/Constants;->CAR_TYPE:Ljava/lang/String;

    const-string v4, "qdriveCarType"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0x103

    .line 891
    iput v3, v0, Landroid/os/Message;->what:I

    .line 892
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 893
    sget-object v2, Lcom/neusoft/qdrivelink/MainActivity;->myHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 895
    :cond_2
    iget-object v3, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    iget-object v4, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->val$version:Ljava/lang/String;

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    invoke-virtual/range {v3 .. v8}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyLinkUpgrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 898
    :cond_3
    iget-object v9, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    iget-object v10, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->val$version:Ljava/lang/String;

    iget-object v11, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->val$localPathNoName:Ljava/lang/String;

    iget-object v12, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->val$fileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/neusoft/qdrivelink/Constants;->CAR_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 899
    invoke-static {v9, v0, v5}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/lang/String;

    iget-object v0, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/neusoft/qdrivelink/Constants;->CAR_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 900
    invoke-static {v0, v2, v5}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Ljava/lang/String;

    .line 898
    invoke-virtual/range {v9 .. v14}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyLinkUpgrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 904
    :cond_4
    iget-object v0, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->val$file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 906
    iget-object v6, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    iget-object v7, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->val$version:Ljava/lang/String;

    iget-object v8, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->val$localPathNoName:Ljava/lang/String;

    iget-object v9, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->val$fileName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/neusoft/qdrivelink/Constants;->CAR_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 907
    invoke-static {v6, v0, v5}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    iget-object v0, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/neusoft/qdrivelink/Constants;->CAR_TYPE:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 908
    invoke-static {v0, v2, v5}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 906
    invoke-virtual/range {v6 .. v11}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyLinkUpgrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 911
    :cond_5
    iget-object v12, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    iget-object v13, v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;->val$version:Ljava/lang/String;

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    invoke-virtual/range {v12 .. v17}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyLinkUpgrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
