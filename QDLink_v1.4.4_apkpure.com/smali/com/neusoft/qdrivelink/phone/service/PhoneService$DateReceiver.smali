.class public Lcom/neusoft/qdrivelink/phone/service/PhoneService$DateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/phone/service/PhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$DateReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 285
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.DATE_CHANGED"

    .line 286
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 287
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$DateReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$200(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 288
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$DateReceiver;->this$0:Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->access$200(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;->onChange()V

    :cond_0
    return-void
.end method
