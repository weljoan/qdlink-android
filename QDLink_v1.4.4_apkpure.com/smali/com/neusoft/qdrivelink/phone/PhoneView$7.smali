.class Lcom/neusoft/qdrivelink/phone/PhoneView$7;
.super Ljava/lang/Object;
.source "PhoneView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView;->initFrequentView(Landroid/content/Context;)V
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

    .line 789
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$7;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 792
    sget-object p1, Lcom/neusoft/qdrivelink/phone/PhoneModel;->mContactsData:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    .line 793
    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getChecked()I

    move-result p2

    if-nez p2, :cond_0

    .line 795
    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$7;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2600(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->addCheckCount(Lcom/neusoft/qdrivelink/phone/bean/SortBean;)V

    goto :goto_0

    .line 797
    :cond_0
    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getChecked()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 799
    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$7;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2600(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->deCheckCount(Lcom/neusoft/qdrivelink/phone/bean/SortBean;)V

    .line 802
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$7;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$2600(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->notifyDataSetChanged()V

    return-void
.end method
