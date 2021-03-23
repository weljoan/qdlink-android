.class Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$HeaderViewHolder;
.super Ljava/lang/Object;
.source "PhoneAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field cl_contact_list_header:Landroidx/constraintlayout/widget/ConstraintLayout;

.field text:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$HeaderViewHolder;->this$0:Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
