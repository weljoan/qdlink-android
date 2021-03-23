.class public Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;
.super Ljava/lang/Object;
.source "WifiDirectManager.java"


# static fields
.field public static final STATUS_CONNECTED:I = 0x2

.field public static final STATUS_CONNECTING:I = 0x1

.field public static final STATUS_DISCONNECT:I


# instance fields
.field private synthetic a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

.field public deviceAddress:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field public isOwner:Z

.field public status:I


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V
    .locals 0

    .line 984
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
