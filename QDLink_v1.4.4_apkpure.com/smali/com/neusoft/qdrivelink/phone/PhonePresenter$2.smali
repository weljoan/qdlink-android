.class Lcom/neusoft/qdrivelink/phone/PhonePresenter$2;
.super Ljava/lang/Object;
.source "PhonePresenter.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhonePresenter;->callTel(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/PhonePresenter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhonePresenter;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter$2;->this$0:Lcom/neusoft/qdrivelink/phone/PhonePresenter;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter$2;->val$number:Ljava/lang/String;

    iput-object p3, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public okOnclick()V
    .locals 3

    .line 149
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter$2;->val$number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 150
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter$2;->val$activity:Landroid/app/Activity;

    const-string v2, "android.permission.CALL_PHONE"

    invoke-static {v1, v2}, Landroidx/core/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 152
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter$2;->this$0:Lcom/neusoft/qdrivelink/phone/PhonePresenter;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhonePresenter;->access$000(Lcom/neusoft/qdrivelink/phone/PhonePresenter;)Lcom/neusoft/qdrivelink/phone/PhoneView;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter$2;->val$activity:Landroid/app/Activity;

    const v2, 0x7f0d008a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 155
    :cond_0
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onRefusePermission()V
    .locals 0

    return-void
.end method
