.class Lcom/neusoft/qdrivelink/phone/PhoneView$8;
.super Ljava/lang/Object;
.source "PhoneView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/PhoneView;->initContactsView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/PhoneView;Landroid/content/Context;)V
    .locals 0

    .line 813
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$8;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$8;->val$context:Landroid/content/Context;

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

    .line 816
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$8;->this$0:Lcom/neusoft/qdrivelink/phone/PhoneView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/phone/PhoneView;->access$500(Lcom/neusoft/qdrivelink/phone/PhoneView;)Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneView$8;->val$context:Landroid/content/Context;

    sget-object p4, Lcom/neusoft/qdrivelink/phone/PhoneModel;->mContactsData:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {p3}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getNumber()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/neusoft/qdrivelink/phone/PhoneContract$Presenter;->callNumber(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
