.class Lcom/neusoft/qdrivelink/phone/PhoneView$16;
.super Ljava/lang/Object;
.source "PhoneView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView;->setAddFrequentData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

.field final synthetic val$addFrequentData:Ljava/util/ArrayList;

.field final synthetic val$sections:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhoneView;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 1184
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$16;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$16;->val$addFrequentData:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$16;->val$sections:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1188
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$16;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$3900(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 1189
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$16;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2600(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$16;->val$addFrequentData:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$16;->val$sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->setData(Ljava/util/List;Ljava/util/ArrayList;)V

    .line 1190
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$16;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2600(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->notifyDataSetChanged()V

    return-void
.end method
