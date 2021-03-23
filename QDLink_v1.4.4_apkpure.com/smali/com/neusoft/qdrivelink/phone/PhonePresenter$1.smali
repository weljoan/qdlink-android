.class Lcom/neusoft/qdrivelink/phone/PhonePresenter$1;
.super Ljava/lang/Object;
.source "PhonePresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhonePresenter;->getContacts(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/PhonePresenter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhonePresenter;Landroid/content/Context;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter$1;->this$0:Lcom/neusoft/qdrivelink/phone/PhonePresenter;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhonePresenter$1;->this$0:Lcom/neusoft/qdrivelink/phone/PhonePresenter;

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneModel;->getPhoneContacts(Landroid/content/Context;Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;)Ljava/util/List;

    return-void
.end method
