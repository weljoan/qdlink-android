.class public Lcom/neusoft/interconnection/utils/LinkConfig;
.super Ljava/lang/Object;
.source "LinkConfig.java"


# static fields
.field public static final BEIJING_LINK:Ljava/lang/String; = "BEIJINGLink"

.field public static CHANNEL_ONE_ID:Ljava/lang/String; = "com.neusoft.qdlink.notifation.channelid.dtwxw"

.field public static CHANNEL_ONE_NAME:Ljava/lang/String; = "Com Neusoft Qdriveauto Channel One DTWXW"

.field public static final CONNECT_NO_MODE:I = -0x1

.field public static final CONNECT_USB_MODE:I = 0x0

.field public static final CONNECT_WIFI_MODE:I = 0x1

.field public static CurrentLink:Ljava/lang/String; = "QDriveLink"

.field public static final DT_LINK:Ljava/lang/String; = "DTLink"

.field public static final Q_DRIVE_LINK:Ljava/lang/String; = "QDriveLink"

.field public static checkSendAppStatus:J = 0x0L

.field public static datongflag:Z = false

.field private static k:Lcom/neusoft/interconnection/utils/LinkConfig; = null

.field public static notificationId:I = 0x271b

.field public static timeInterval:J = 0x1770L


# instance fields
.field private a:Ljava/net/ServerSocket;

.field private b:Ljava/net/Socket;

.field private c:Ljava/net/DatagramSocket;

.field private d:Ljava/net/DatagramPacket;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

.field private j:Z

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 41
    iput-object v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->e:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->f:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->g:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->j:Z

    const/4 v1, -0x1

    .line 118
    iput v1, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->l:I

    .line 132
    iput v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->m:I

    .line 134
    iput v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->n:I

    return-void
.end method

.method public static getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;
    .locals 1

    .line 112
    sget-object v0, Lcom/neusoft/interconnection/utils/LinkConfig;->k:Lcom/neusoft/interconnection/utils/LinkConfig;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Lcom/neusoft/interconnection/utils/LinkConfig;

    invoke-direct {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;-><init>()V

    sput-object v0, Lcom/neusoft/interconnection/utils/LinkConfig;->k:Lcom/neusoft/interconnection/utils/LinkConfig;

    .line 115
    :cond_0
    sget-object v0, Lcom/neusoft/interconnection/utils/LinkConfig;->k:Lcom/neusoft/interconnection/utils/LinkConfig;

    return-object v0
.end method


# virtual methods
.method public getCurrentLinkMode()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->l:I

    return v0
.end method

.method public getDatagramSocket()Ljava/net/DatagramSocket;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->c:Ljava/net/DatagramSocket;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceUUID()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkConnectionInterface()Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->i:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    return-object v0
.end method

.method public getLinkMode()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->m:I

    return v0
.end method

.method public getMirrorPort()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->n:I

    return v0
.end method

.method public getPassistMobileNum()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getSendPack()Ljava/net/DatagramPacket;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->d:Ljava/net/DatagramPacket;

    return-object v0
.end method

.method public getUuidName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getWifiServerSocket()Ljava/net/ServerSocket;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->a:Ljava/net/ServerSocket;

    return-object v0
.end method

.method public getWifiSocket()Ljava/net/Socket;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->b:Ljava/net/Socket;

    return-object v0
.end method

.method public isUsbLink()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->j:Z

    return v0
.end method

.method public setCurrentLinkMode(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->l:I

    return-void
.end method

.method public setDatagramSocket(Ljava/net/DatagramSocket;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->c:Ljava/net/DatagramSocket;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->f:Ljava/lang/String;

    return-void
.end method

.method public setDeviceUUID(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->e:Ljava/lang/String;

    return-void
.end method

.method public setLinkConnectionInterface(Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->i:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    return-void
.end method

.method public setLinkMode(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->m:I

    return-void
.end method

.method public setMirrorPort(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->n:I

    return-void
.end method

.method public setPassistMobileNum(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->g:Ljava/lang/String;

    return-void
.end method

.method public setSendPack(Ljava/net/DatagramPacket;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->d:Ljava/net/DatagramPacket;

    return-void
.end method

.method public setUsbLink(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->j:Z

    return-void
.end method

.method public setUuidName(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->h:Ljava/lang/String;

    return-void
.end method

.method public setWifiServerSocket(Ljava/net/ServerSocket;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->a:Ljava/net/ServerSocket;

    return-void
.end method

.method public setWifiSocket(Ljava/net/Socket;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/neusoft/interconnection/utils/LinkConfig;->b:Ljava/net/Socket;

    return-void
.end method
