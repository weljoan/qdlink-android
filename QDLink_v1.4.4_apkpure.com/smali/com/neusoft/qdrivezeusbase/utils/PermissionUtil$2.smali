.class final Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$2;
.super Ljava/lang/Object;
.source "PermissionUtil.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil;->setPermissionOnclickListener(Landroid/app/Activity;Landroid/view/View;Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$ViewPermissionListener;[Ljava/lang/String;)V
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
.field final synthetic val$permissionClick:Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$ViewPermissionListener;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$ViewPermissionListener;Landroid/view/View;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$2;->val$permissionClick:Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$ViewPermissionListener;

    iput-object p2, p0, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$2;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$2;->val$permissionClick:Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$ViewPermissionListener;

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$2;->val$v:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$ViewPermissionListener;->okOnclick(Landroid/view/View;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$2;->val$permissionClick:Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$ViewPermissionListener;

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$2;->val$v:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$ViewPermissionListener;->onRefusePermission(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 66
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$2;->call(Ljava/lang/Boolean;)V

    return-void
.end method
