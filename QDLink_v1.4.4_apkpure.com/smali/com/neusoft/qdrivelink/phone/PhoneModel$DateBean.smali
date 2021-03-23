.class public Lcom/neusoft/qdrivelink/phone/PhoneModel$DateBean;
.super Ljava/lang/Object;
.source "PhoneModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/phone/PhoneModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateBean"
.end annotation


# instance fields
.field public dateStr:Ljava/lang/String;

.field public weekday:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 670
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$DateBean;->dateStr:Ljava/lang/String;

    .line 672
    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/PhoneModel$DateBean;->weekday:Ljava/lang/String;

    return-void
.end method
