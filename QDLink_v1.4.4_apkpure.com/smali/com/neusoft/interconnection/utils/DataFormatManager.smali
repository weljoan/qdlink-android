.class public Lcom/neusoft/interconnection/utils/DataFormatManager;
.super Ljava/lang/Object;
.source "DataFormatManager.java"


# static fields
.field private static a:Lcom/neusoft/interconnection/utils/DataFormatManager;


# instance fields
.field private b:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 22
    iput v0, p0, Lcom/neusoft/interconnection/utils/DataFormatManager;->b:I

    return-void
.end method

.method public static getInstance()Lcom/neusoft/interconnection/utils/DataFormatManager;
    .locals 1

    .line 29
    sget-object v0, Lcom/neusoft/interconnection/utils/DataFormatManager;->a:Lcom/neusoft/interconnection/utils/DataFormatManager;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lcom/neusoft/interconnection/utils/DataFormatManager;

    invoke-direct {v0}, Lcom/neusoft/interconnection/utils/DataFormatManager;-><init>()V

    sput-object v0, Lcom/neusoft/interconnection/utils/DataFormatManager;->a:Lcom/neusoft/interconnection/utils/DataFormatManager;

    .line 32
    :cond_0
    sget-object v0, Lcom/neusoft/interconnection/utils/DataFormatManager;->a:Lcom/neusoft/interconnection/utils/DataFormatManager;

    return-object v0
.end method


# virtual methods
.method public replySpeedParms()[B
    .locals 1

    .line 98
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/message/Speech;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/message/Speech;-><init>()V

    .line 99
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/message/Speech;->getBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method public sendAppStatus()[B
    .locals 2

    .line 40
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;-><init>()V

    .line 41
    iget v1, p0, Lcom/neusoft/interconnection/utils/DataFormatManager;->b:I

    iput v1, v0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->integrator_server:I

    .line 42
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->getBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method public sendUpGrade()[B
    .locals 1

    .line 89
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;-><init>()V

    .line 90
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->getBuffer()[B

    move-result-object v0

    return-object v0
.end method

.method public sendVersion([BLcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;)[B
    .locals 2

    .line 61
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/message/Version;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/message/Version;-><init>()V

    .line 62
    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/message/Version;->setValueByBuffer([B)V

    if-eqz p2, :cond_1

    .line 65
    iget p1, v0, Lcom/neusoft/interconnection/linkconnection/message/Version;->carWidth:I

    if-nez p1, :cond_0

    iget p1, v0, Lcom/neusoft/interconnection/linkconnection/message/Version;->carHeight:I

    if-nez p1, :cond_0

    const/16 p1, 0x320

    const/16 v1, 0x1e0

    .line 66
    invoke-virtual {p2, p1, v1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->calcWidthAndHeight(II)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object p1

    goto :goto_0

    .line 68
    :cond_0
    iget p1, v0, Lcom/neusoft/interconnection/linkconnection/message/Version;->carWidth:I

    iget v1, v0, Lcom/neusoft/interconnection/linkconnection/message/Version;->carHeight:I

    invoke-virtual {p2, p1, v1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->calcWidthAndHeight(II)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object p1

    .line 70
    :goto_0
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth()I

    move-result p2

    iput p2, v0, Lcom/neusoft/interconnection/linkconnection/message/Version;->phoneWidth:I

    .line 71
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight()I

    move-result p2

    iput p2, v0, Lcom/neusoft/interconnection/linkconnection/message/Version;->phoneHeight:I

    .line 72
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarCalcWidth()I

    move-result p2

    iput p2, v0, Lcom/neusoft/interconnection/linkconnection/message/Version;->outAppWidth:I

    .line 73
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarCalcHeight()I

    move-result p1

    iput p1, v0, Lcom/neusoft/interconnection/linkconnection/message/Version;->outAppHeight:I

    .line 75
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "myBinder \uff01= null carWidth::"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v0, Lcom/neusoft/interconnection/linkconnection/message/Version;->carWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",carHeight:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/neusoft/interconnection/linkconnection/message/Version;->carHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",version.phoneWkidth:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/neusoft/interconnection/linkconnection/message/Version;->phoneWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",version.phoneHeight:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/neusoft/interconnection/linkconnection/message/Version;->phoneHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",version.outAppWidth:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/neusoft/interconnection/linkconnection/message/Version;->outAppWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",version.outAppHeight:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v0, Lcom/neusoft/interconnection/linkconnection/message/Version;->outAppHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/message/Version;->setVersion()V

    .line 80
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/message/Version;->getBuffer()[B

    move-result-object p1

    return-object p1
.end method

.method public setIntegratorServer(I)V
    .locals 0

    .line 51
    iput p1, p0, Lcom/neusoft/interconnection/utils/DataFormatManager;->b:I

    return-void
.end method
