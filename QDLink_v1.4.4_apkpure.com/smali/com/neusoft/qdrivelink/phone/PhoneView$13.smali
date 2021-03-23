.class Lcom/neusoft/qdrivelink/phone/PhoneView$13;
.super Ljava/lang/Object;
.source "PhoneView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView;->setCallLogData(Ljava/util/ArrayList;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

.field final synthetic val$callLog:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhoneView;Ljava/util/ArrayList;)V
    .locals 0

    .line 1094
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$13;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$13;->val$callLog:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1097
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$13;->val$callLog:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1101
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$13;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$500(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$13;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$3200(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->refreshCallLog(Landroid/content/Context;)V

    .line 1102
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$13;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$3300(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$13;->val$callLog:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;->setData(Ljava/util/List;)V

    .line 1103
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$13;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$3300(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;->notifyDataSetChanged()V

    .line 1104
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$13;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$3000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 1105
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$13;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2200(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$3100(Lcom/neusoft/qdrivelink/phone/PhoneView;I)V

    goto :goto_1

    .line 1098
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$13;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$3000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 1099
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$13;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2200(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$3100(Lcom/neusoft/qdrivelink/phone/PhoneView;I)V

    :goto_1
    return-void
.end method
