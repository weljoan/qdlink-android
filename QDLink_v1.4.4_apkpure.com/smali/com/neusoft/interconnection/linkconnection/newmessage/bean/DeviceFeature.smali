.class public Lcom/neusoft/interconnection/linkconnection/newmessage/bean/DeviceFeature;
.super Ljava/lang/Object;
.source "DeviceFeature.java"


# instance fields
.field private PassistMobileNum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/DeviceFeature;->PassistMobileNum:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPassistMobileNum()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/DeviceFeature;->PassistMobileNum:Ljava/lang/String;

    return-object v0
.end method

.method public setPassistMobileNum(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/DeviceFeature;->PassistMobileNum:Ljava/lang/String;

    return-void
.end method
