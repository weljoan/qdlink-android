.class public Lcom/neusoft/qdrivelink/mainpage/MainPageModel;
.super Ljava/lang/Object;
.source "MainPageModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getViewPosition(Landroid/widget/ImageView;[Landroid/widget/ImageView;)I
    .locals 2

    const/4 v0, 0x0

    .line 31
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 32
    aget-object v1, p1, v0

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    .line 84
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    return v0
.end method

.method public static pageChange(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;[Landroid/widget/ImageView;I)V
    .locals 1

    const/4 p0, 0x0

    .line 51
    :goto_0
    array-length p1, p2

    if-ge p0, p1, :cond_1

    if-ne p3, p0, :cond_0

    .line 53
    aget-object p1, p2, p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1

    .line 55
    :cond_0
    aget-object p1, p2, p0

    const v0, 0x3f333333    # 0.7f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static startTimeRecord(Lcom/neusoft/qdrivelink/mainpage/inter/TimeRecordListener;)V
    .locals 6

    .line 64
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 65
    new-instance v1, Lcom/neusoft/qdrivelink/mainpage/MainPageModel$1;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageModel$1;-><init>(Lcom/neusoft/qdrivelink/mainpage/inter/TimeRecordListener;)V

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    .line 78
    rem-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method
