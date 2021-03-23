.class Lcom/neusoft/qdrivelink/phone/PhoneView$10$1;
.super Ljava/lang/Object;
.source "PhoneView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView$10;->convert(Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter$VH;Lcom/neusoft/qdrivelink/phone/bean/SortBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$10;

.field final synthetic val$data:Lcom/neusoft/qdrivelink/phone/bean/SortBean;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhoneView$10;Lcom/neusoft/qdrivelink/phone/bean/SortBean;)V
    .locals 0

    .line 883
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$10$1;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$10;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$10$1;->val$data:Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 886
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$10$1;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$10;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/phone/PhoneView$10;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$500(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$10$1;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$10;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/phone/PhoneView$10;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2900(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$10$1;->val$data:Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->callNumber(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
