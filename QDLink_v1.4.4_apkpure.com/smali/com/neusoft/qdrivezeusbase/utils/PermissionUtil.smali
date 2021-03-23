.class public Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$ViewPermissionListener;,
        Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$PermissionListener;
    }
.end annotation


# static fields
.field private static mRxPermissions:Lcom/tbruyelle/rxpermissions/RxPermissions;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/tbruyelle/rxpermissions/RxPermissions;
    .locals 1

    .line 22
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil;->mRxPermissions:Lcom/tbruyelle/rxpermissions/RxPermissions;

    if-eqz v0, :cond_0

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lcom/tbruyelle/rxpermissions/RxPermissions;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions/RxPermissions;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method public static varargs requestPermission(Landroid/app/Activity;Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$PermissionListener;[Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil;->getInstance(Landroid/app/Activity;)Lcom/tbruyelle/rxpermissions/RxPermissions;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/tbruyelle/rxpermissions/RxPermissions;->request([Ljava/lang/String;)Lrx/Observable;

    move-result-object p0

    new-instance p2, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$1;

    invoke-direct {p2, p1}, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$1;-><init>(Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$PermissionListener;)V

    .line 39
    invoke-virtual {p0, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public static varargs setPermissionOnclickListener(Landroid/app/Activity;Landroid/view/View;Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$ViewPermissionListener;[Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-static {p1}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object v0

    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil;->getInstance(Landroid/app/Activity;)Lcom/tbruyelle/rxpermissions/RxPermissions;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/tbruyelle/rxpermissions/RxPermissions;->ensure([Ljava/lang/String;)Lrx/Observable$Transformer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lrx/Observable;->compose(Lrx/Observable$Transformer;)Lrx/Observable;

    move-result-object p0

    new-instance p3, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$2;

    invoke-direct {p3, p2, p1}, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$2;-><init>(Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$ViewPermissionListener;Landroid/view/View;)V

    .line 66
    invoke-virtual {p0, p3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method
