.class public Lcom/neusoft/qdrivelink/phone/bean/NumBean;
.super Ljava/lang/Object;
.source "NumBean.java"


# instance fields
.field public bg_id:I

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/bean/NumBean;->number:Ljava/lang/String;

    .line 10
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/bean/NumBean;->bg_id:I

    return-void
.end method
