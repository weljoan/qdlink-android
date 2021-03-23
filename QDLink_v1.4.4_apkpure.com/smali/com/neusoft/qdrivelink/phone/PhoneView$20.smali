.class Lcom/neusoft/qdrivelink/phone/PhoneView$20;
.super Ljava/lang/Object;
.source "PhoneView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView;->setSearchEndView(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

.field final synthetic val$contacts:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhoneView;Ljava/util/ArrayList;)V
    .locals 0

    .line 1339
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$20;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$20;->val$contacts:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1342
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$20;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2700(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1343
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$20;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$4000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$20;->val$contacts:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;->setData(Ljava/util/List;)V

    .line 1344
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$20;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$4000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/phone/adapter/SearchAdapter;->notifyDataSetChanged()V

    .line 1345
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$20;->val$contacts:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1346
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$20;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2700(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0d0087

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1347
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$20;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2700(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    return-void
.end method
