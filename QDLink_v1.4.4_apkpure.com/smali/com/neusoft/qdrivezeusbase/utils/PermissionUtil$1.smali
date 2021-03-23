.class final Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$1;
.super Ljava/lang/Object;
.source "PermissionUtil.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil;->requestPermission(Landroid/app/Activity;Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$PermissionListener;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$permissionListener:Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$PermissionListener;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$PermissionListener;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$1;->val$permissionListener:Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$PermissionListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 0

    .line 43
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$1;->val$permissionListener:Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$PermissionListener;

    invoke-interface {p1}, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$PermissionListener;->okOnclick()V

    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$1;->val$permissionListener:Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$PermissionListener;

    invoke-interface {p1}, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$PermissionListener;->onRefusePermission()V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 40
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$1;->call(Ljava/lang/Boolean;)V

    return-void
.end method
