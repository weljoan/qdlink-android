.class Lcom/neusoft/qdrivelink/phone/PhoneView$6$2;
.super Ljava/lang/Object;
.source "PhoneView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView$6;->convert(Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter$VH;Lcom/neusoft/qdrivelink/phone/bean/SortBean;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$6;

.field final synthetic val$data:Lcom/neusoft/qdrivelink/phone/bean/SortBean;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhoneView$6;Lcom/neusoft/qdrivelink/phone/bean/SortBean;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$6$2;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$6;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$6$2;->val$data:Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 714
    sget-object p1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$6$2;->val$data:Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 715
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$6$2;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$6;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/phone/PhoneView$6;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$1800(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/google/gson/Gson;

    move-result-object p1

    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 716
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$6$2;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$6;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/phone/PhoneView$6;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$1900(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "frequent"

    invoke-static {v0, v1, p1}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 717
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$6$2;->this$1:Lcom/neusoft/qdrivelink/phone/PhoneView$6;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/phone/PhoneView$6;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->setFrequentData()V

    return-void
.end method
