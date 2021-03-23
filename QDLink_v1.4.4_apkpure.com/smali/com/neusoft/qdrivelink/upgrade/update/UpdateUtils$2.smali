.class Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$2;
.super Ljava/lang/Object;
.source "UpdateUtils.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->checkLinkAppOrListVersion(ILjava/lang/String;Ljava/lang/String;Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeLinkCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;

.field final synthetic val$upGradeLinkCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeLinkCallBack;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeLinkCallBack;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$2;->this$0:Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$2;->val$upGradeLinkCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeLinkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestFail(I)V
    .locals 2

    const-string v0, "testwang"

    const-string v1, "data hahaha requestFail"

    .line 312
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object v0, p0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$2;->val$upGradeLinkCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeLinkCallBack;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeLinkCallBack;->linkUpGradeBean(ILcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V

    return-void
.end method

.method public requestSuccess(Ljava/util/HashMap;)V
    .locals 13

    const-string v0, "testwang"

    const-string v1, "data hahaha requestSuccess"

    .line 266
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "status"

    .line 268
    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "msg"

    .line 269
    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "result"

    .line 272
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    const-string v5, "200"

    .line 279
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, ""

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    .line 280
    :try_start_1
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "version"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 281
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v8, "packageInfo"

    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v8, "car"

    .line 282
    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    const-string v8, "url"

    .line 283
    invoke-virtual {p1, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "apk_check"

    .line 284
    invoke-virtual {p1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "size"

    .line 285
    invoke-virtual {p1, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "packageName"

    .line 286
    invoke-virtual {p1, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 288
    new-instance v11, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    invoke-direct {v11}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;-><init>()V

    .line 289
    invoke-virtual {v11, v7}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->setVersion(Ljava/lang/String;)V

    .line 290
    invoke-virtual {v11, v8}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->setUrl(Ljava/lang/String;)V

    .line 291
    invoke-virtual {v11, v10}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->setSize(Ljava/lang/String;)V

    .line 292
    invoke-virtual {v11, v9}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->setApk_check(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v11, p1}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->setPackageName(Ljava/lang/String;)V

    .line 294
    iget-object v12, p0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$2;->val$upGradeLinkCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeLinkCallBack;

    invoke-interface {v12, v5, v11}, Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeLinkCallBack;->linkUpGradeBean(ILcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V

    goto :goto_0

    .line 298
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$2;->val$upGradeLinkCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeLinkCallBack;

    invoke-interface {p1, v2, v1}, Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeLinkCallBack;->linkUpGradeBean(ILcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V

    move-object p1, v6

    move-object v7, p1

    move-object v8, v7

    move-object v9, v8

    move-object v10, v9

    .line 300
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkLinkAppOrListVersion status:"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",msg:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",version:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",url:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",apk_check:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",size:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",packageName:"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",updateornot:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkLinkAppOrListVersion exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$2;->val$upGradeLinkCallBack:Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeLinkCallBack;

    invoke-interface {p1, v2, v1}, Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeLinkCallBack;->linkUpGradeBean(ILcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V

    :goto_1
    return-void
.end method
