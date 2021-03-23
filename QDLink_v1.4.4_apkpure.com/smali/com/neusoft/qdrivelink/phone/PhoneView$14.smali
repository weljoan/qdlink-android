.class Lcom/neusoft/qdrivelink/phone/PhoneView$14;
.super Ljava/lang/Object;
.source "PhoneView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView;->setContactsData(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

.field final synthetic val$contactPhoto:Ljava/util/HashMap;

.field final synthetic val$contacts:Ljava/util/ArrayList;

.field final synthetic val$sections:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhoneView;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0

    .line 1113
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->val$contacts:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->val$sections:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->val$contactPhoto:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1116
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->val$contacts:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1120
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$3400(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setTag(Ljava/lang/Object;)V

    .line 1121
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$3500(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->val$contacts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->val$sections:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->val$contactPhoto:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->setData(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    .line 1122
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$3500(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->notifyDataSetChanged()V

    .line 1123
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->val$contacts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->val$sections:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lcom/neusoft/qdrivelink/phone/PhoneView;->setAddFrequentData(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 1117
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$3400(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setTag(Ljava/lang/Object;)V

    .line 1125
    :goto_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2200(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2300(Lcom/neusoft/qdrivelink/phone/PhoneView;I)V

    .line 1126
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$500(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$3600(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$000(Lcom/neusoft/qdrivelink/phone/PhoneView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->getContactsByNums(Landroid/content/Context;Ljava/lang/String;)V

    .line 1151
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$3700(Lcom/neusoft/qdrivelink/phone/PhoneView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1152
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$14;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$3700(Lcom/neusoft/qdrivelink/phone/PhoneView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$3800(Lcom/neusoft/qdrivelink/phone/PhoneView;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
