.class Lcom/neusoft/qdrivelink/phone/PhoneView$15;
.super Ljava/lang/Object;
.source "PhoneView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView;->setFrequentData()V
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

    .line 1159
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$15;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1162
    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1169
    :cond_0
    new-instance v0, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-direct {v0}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;-><init>()V

    .line 1170
    new-instance v1, Ljava/util/ArrayList;

    sget-object v2, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1171
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1172
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$15;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2100(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;->setData(Ljava/util/List;)V

    .line 1173
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$15;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2100(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/phone/adapter/QuickAdapter;->notifyDataSetChanged()V

    .line 1174
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$15;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2400(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 1163
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$15;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2400(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setTag(Ljava/lang/Object;)V

    .line 1176
    :goto_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$15;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2200(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2300(Lcom/neusoft/qdrivelink/phone/PhoneView;I)V

    return-void
.end method
