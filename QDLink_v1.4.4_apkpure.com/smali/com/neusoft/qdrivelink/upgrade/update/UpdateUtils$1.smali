.class Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$1;
.super Ljava/lang/Object;
.source "UpdateUtils.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->checkNewVersion(Ljava/lang/String;Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;

.field final synthetic val$localVersion:Ljava/lang/String;

.field final synthetic val$upGradeCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeCallBack;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;Ljava/lang/String;Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeCallBack;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$1;->this$0:Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$1;->val$localVersion:Ljava/lang/String;

    iput-object p3, p0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$1;->val$upGradeCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestFail(I)V
    .locals 2

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestFail code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "testwang"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$1;->val$upGradeCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeCallBack;->isNeedUpGrade(ILcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V

    return-void
.end method

.method public requestSuccess(Ljava/util/HashMap;)V
    .locals 14

    const-string v0, "testwang"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "status"

    .line 72
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "msg"

    .line 73
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "result"

    .line 76
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const-string v5, "200"

    .line 83
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    if-eqz v5, :cond_1

    const/4 v5, 0x0

    .line 86
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    const-string v7, "version"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 87
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v7, "packageInfo"

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v7, "phone"

    .line 88
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v7, "url"

    .line 89
    invoke-virtual {p1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "apk_check"

    .line 90
    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "size"

    .line 91
    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "packageName"

    .line 92
    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "updateornot"

    .line 93
    invoke-virtual {p1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 94
    iget-object v11, p0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$1;->val$localVersion:Ljava/lang/String;

    invoke-static {v11, v6}, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    .line 95
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkNewVersion sss:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v11, p0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$1;->val$localVersion:Ljava/lang/String;

    invoke-static {v11, v6}, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_0

    .line 98
    new-instance v11, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    invoke-direct {v11}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;-><init>()V

    .line 99
    invoke-virtual {v11, v8}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->setApk_check(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v11, v10}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->setPackageName(Ljava/lang/String;)V

    .line 101
    invoke-virtual {v11, v9}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->setSize(Ljava/lang/String;)V

    .line 102
    invoke-virtual {v11, v7}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->setUrl(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v11, v6}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->setVersion(Ljava/lang/String;)V

    .line 105
    iget-object v12, p0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$1;->val$upGradeCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeCallBack;

    invoke-interface {v12, v5, v11}, Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeCallBack;->isNeedUpGrade(ILcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object v5, p0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$1;->val$upGradeCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeCallBack;

    invoke-interface {v5, v2, v1}, Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeCallBack;->isNeedUpGrade(ILcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$1;->val$upGradeCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeCallBack;

    invoke-interface {p1, v2, v1}, Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeCallBack;->isNeedUpGrade(ILcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V

    move-object p1, v6

    move-object v7, p1

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    .line 114
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkNewVersion status:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",msg:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",version:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",url:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",apk_check:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",size:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",packageName:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",updateornot:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkNewVersion exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$1;->val$upGradeCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeCallBack;

    invoke-interface {p1, v2, v1}, Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeCallBack;->isNeedUpGrade(ILcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V

    :goto_1
    return-void
.end method
