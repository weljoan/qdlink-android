.class Lcom/neusoft/qdrivelink/phone/PhoneView$5$1;
.super Ljava/lang/Object;
.source "PhoneView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView$5;->convert(Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;Ljava/util/Map;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$5;

.field final synthetic val$number:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhoneView$5;Ljava/lang/String;)V
    .locals 0

    .line 669
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$5$1;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$5;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$5$1;->val$number:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 672
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$5$1;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$5;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/phone/PhoneView$5;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$500(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$5$1;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$5;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/phone/PhoneView$5;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$5$1;->val$number:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->callNumber(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
