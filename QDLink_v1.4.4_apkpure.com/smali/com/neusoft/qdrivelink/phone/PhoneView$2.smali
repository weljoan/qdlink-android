.class Lcom/neusoft/qdrivelink/phone/PhoneView$2;
.super Ljava/lang/Object;
.source "PhoneView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhoneView;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$2;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$2;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$500(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$2;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$700(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->refreshCallLog(Landroid/content/Context;)V

    return-void
.end method
