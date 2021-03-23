.class Lcom/neusoft/ssp/protocol/SSPProtocol$InstanceHolder;
.super Ljava/lang/Object;
.source "SSPProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/ssp/protocol/SSPProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field private static instance:Lcom/neusoft/ssp/protocol/SSPProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/neusoft/ssp/protocol/SSPProtocol;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/neusoft/ssp/protocol/SSPProtocol;-><init>(Lcom/neusoft/ssp/protocol/SSPProtocol;)V

    sput-object v0, Lcom/neusoft/ssp/protocol/SSPProtocol$InstanceHolder;->instance:Lcom/neusoft/ssp/protocol/SSPProtocol;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/neusoft/ssp/protocol/SSPProtocol;
    .locals 1

    .line 14
    sget-object v0, Lcom/neusoft/ssp/protocol/SSPProtocol$InstanceHolder;->instance:Lcom/neusoft/ssp/protocol/SSPProtocol;

    return-object v0
.end method
