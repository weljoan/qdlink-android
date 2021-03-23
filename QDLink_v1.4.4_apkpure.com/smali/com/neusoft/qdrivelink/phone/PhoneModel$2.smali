.class final Lcom/neusoft/qdrivelink/phone/PhoneModel$2;
.super Ljava/lang/Object;
.source "PhoneModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneModel;->getrecord(Landroid/content/Context;Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field public c4isnitnull:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$presenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$2;->val$presenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const-string v0, "\u8fdb\u5165sendRecord\u65b9\u6cd5"

    .line 395
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->access$100()V

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "logs table"

    .line 403
    invoke-static {v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 404
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$2;->val$context:Landroid/content/Context;

    const-string v3, "android.permission.READ_CALL_LOG"

    invoke-static {v2, v3}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$2;->val$presenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    const-string v2, "PERMISSION IS NOT GRANTED"

    invoke-interface {v0, v2}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->callLogFail(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "\u83b7\u53d6c4"

    .line 415
    invoke-static {v2}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 416
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$2;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 417
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->access$200()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date desc"

    .line 416
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v3, "\u83b7\u53d6c4\u5b8c\u6bd5"

    .line 419
    invoke-static {v3}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    if-nez v2, :cond_1

    const-string v0, "logs null calls table"

    .line 421
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    .line 423
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->access$200()[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "date desc"

    .line 422
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 427
    :try_start_2
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$2;->val$presenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    sget-object v3, Lcom/neusoft/qdrivelink/phone/PhoneModel;->callog4phone:Ljava/util/ArrayList;

    invoke-interface {v2, v3, v1}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->callLogEnd(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v2

    move-object v10, v2

    move-object v2, v0

    move-object v0, v10

    goto/16 :goto_1

    .line 430
    :cond_1
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6267\u884c\u5b8c\u67e5\u8be2\u8bed\u53e5"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "---"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    if-eqz v2, :cond_8

    const-string v3, "c4.getcount"

    .line 432
    invoke-static {v3}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 433
    iput-boolean v3, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$2;->c4isnitnull:Z

    .line 434
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    .line 435
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "c4>0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 436
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    const v7, 0x7fffffff

    if-ge v6, v7, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    :cond_2
    if-ge v5, v7, :cond_6

    .line 437
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 438
    invoke-interface {v2, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    const/4 v6, 0x4

    .line 439
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v5, :cond_3

    .line 441
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    sput v7, Lcom/neusoft/qdrivelink/phone/PhoneModel;->calllast_id:I

    .line 443
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "string getrecord:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v8, "strNumber"

    .line 446
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "type"

    .line 447
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v9, 0x2

    invoke-interface {v2, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "string lable:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x6

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 450
    new-instance v6, Ljava/util/Date;

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    const-string v8, "time"

    .line 451
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    sget-object v8, Lcom/neusoft/qdrivelink/phone/PhoneModel;->year_sfd:Ljava/text/SimpleDateFormat;

    invoke-virtual {v8, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 453
    invoke-static {}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->access$300()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6

    if-gez v6, :cond_4

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 455
    iget-object v5, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->getNamesBynumbers(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->NumNamehashMap:Ljava/util/HashMap;

    .line 456
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$2;->val$presenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    sget-object v5, Lcom/neusoft/qdrivelink/phone/PhoneModel;->callog4phone:Ljava/util/ArrayList;

    sget-object v6, Lcom/neusoft/qdrivelink/phone/PhoneModel;->NumNamehashMap:Ljava/util/HashMap;

    invoke-interface {v0, v5, v6}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->callLogEnd(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getrecord---time:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 461
    :cond_4
    sget-object v6, Lcom/neusoft/qdrivelink/phone/PhoneModel;->callog4phone:Ljava/util/ArrayList;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_5
    const-string v3, "c4==0"

    .line 465
    invoke-static {v3}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 466
    iget-object v3, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$2;->val$presenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    sget-object v4, Lcom/neusoft/qdrivelink/phone/PhoneModel;->callog4phone:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v1}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->callLogEnd(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 470
    :cond_6
    iget-object v3, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$2;->val$context:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->getNamesBynumbers(Ljava/util/ArrayList;Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v0

    .line 471
    iget-object v3, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$2;->val$presenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    sget-object v4, Lcom/neusoft/qdrivelink/phone/PhoneModel;->callog4phone:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v0}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->callLogEnd(Ljava/util/ArrayList;Ljava/util/HashMap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v2, v1

    .line 480
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "logs error calls table_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 481
    iget-boolean v3, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$2;->c4isnitnull:Z

    if-eqz v3, :cond_7

    .line 482
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$2;->val$presenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    sget-object v3, Lcom/neusoft/qdrivelink/phone/PhoneModel;->callog4phone:Ljava/util/ArrayList;

    invoke-interface {v0, v3, v1}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->callLogEnd(Ljava/util/ArrayList;Ljava/util/HashMap;)V

    goto :goto_2

    .line 485
    :cond_7
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$2;->val$presenter:Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->callLogFail(Ljava/lang/String;)V

    :cond_8
    :goto_2
    if-eqz v2, :cond_9

    const-string v0, "c4!=null can close"

    .line 489
    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 491
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "c4!=null can closee:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    :cond_9
    :goto_3
    return-void
.end method
