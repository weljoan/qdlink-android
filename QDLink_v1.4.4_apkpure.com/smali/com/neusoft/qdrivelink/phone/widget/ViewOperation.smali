.class public Lcom/neusoft/qdrivelink/phone/widget/ViewOperation;
.super Ljava/lang/Object;
.source "ViewOperation.java"


# instance fields
.field remove:Z

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/ViewOperation;->view:Landroid/view/View;

    .line 9
    iput-boolean p2, p0, Lcom/neusoft/qdrivelink/phone/widget/ViewOperation;->remove:Z

    return-void
.end method
