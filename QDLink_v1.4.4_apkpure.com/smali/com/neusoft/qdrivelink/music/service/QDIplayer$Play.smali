.class public final enum Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;
.super Ljava/lang/Enum;
.source "QDIplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/music/service/QDIplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Play"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

.field public static final enum ERROR:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

.field public static final enum IDLE:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

.field public static final enum PAUSE:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

.field public static final enum START:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

.field public static final enum STOP:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 84
    new-instance v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->IDLE:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    .line 85
    new-instance v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    const/4 v2, 0x1

    const-string v3, "START"

    invoke-direct {v0, v3, v2}, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->START:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    .line 86
    new-instance v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    const/4 v3, 0x2

    const-string v4, "PAUSE"

    invoke-direct {v0, v4, v3}, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->PAUSE:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    .line 87
    new-instance v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    const/4 v4, 0x3

    const-string v5, "STOP"

    invoke-direct {v0, v5, v4}, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->STOP:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    .line 88
    new-instance v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    const/4 v5, 0x4

    const-string v6, "ERROR"

    invoke-direct {v0, v6, v5}, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->ERROR:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    .line 83
    sget-object v6, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->IDLE:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    aput-object v6, v0, v1

    sget-object v1, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->START:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    aput-object v1, v0, v2

    sget-object v1, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->PAUSE:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    aput-object v1, v0, v3

    sget-object v1, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->STOP:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    aput-object v1, v0, v4

    sget-object v1, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->ERROR:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    aput-object v1, v0, v5

    sput-object v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->$VALUES:[Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;
    .locals 1

    .line 83
    const-class v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    return-object p0
.end method

.method public static values()[Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;
    .locals 1

    .line 83
    sget-object v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->$VALUES:[Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    invoke-virtual {v0}, [Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    return-object v0
.end method
