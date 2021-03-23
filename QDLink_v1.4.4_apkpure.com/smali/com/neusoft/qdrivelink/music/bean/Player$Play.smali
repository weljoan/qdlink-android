.class public final enum Lcom/neusoft/qdrivelink/music/bean/Player$Play;
.super Ljava/lang/Enum;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/music/bean/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Play"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neusoft/qdrivelink/music/bean/Player$Play;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neusoft/qdrivelink/music/bean/Player$Play;

.field public static final enum IDLE:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

.field public static final enum PAUSE:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

.field public static final enum START:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

.field public static final enum STOP:Lcom/neusoft/qdrivelink/music/bean/Player$Play;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 26
    new-instance v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lcom/neusoft/qdrivelink/music/bean/Player$Play;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->IDLE:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    new-instance v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    const/4 v2, 0x1

    const-string v3, "START"

    invoke-direct {v0, v3, v2}, Lcom/neusoft/qdrivelink/music/bean/Player$Play;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->START:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    new-instance v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    const/4 v3, 0x2

    const-string v4, "PAUSE"

    invoke-direct {v0, v4, v3}, Lcom/neusoft/qdrivelink/music/bean/Player$Play;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->PAUSE:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    new-instance v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    const/4 v4, 0x3

    const-string v5, "STOP"

    invoke-direct {v0, v5, v4}, Lcom/neusoft/qdrivelink/music/bean/Player$Play;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->STOP:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    .line 25
    sget-object v5, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->IDLE:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    aput-object v5, v0, v1

    sget-object v1, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->START:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    aput-object v1, v0, v2

    sget-object v1, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->PAUSE:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    aput-object v1, v0, v3

    sget-object v1, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->STOP:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    aput-object v1, v0, v4

    sput-object v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->$VALUES:[Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neusoft/qdrivelink/music/bean/Player$Play;
    .locals 1

    .line 25
    const-class v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    return-object p0
.end method

.method public static values()[Lcom/neusoft/qdrivelink/music/bean/Player$Play;
    .locals 1

    .line 25
    sget-object v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->$VALUES:[Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    invoke-virtual {v0}, [Lcom/neusoft/qdrivelink/music/bean/Player$Play;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    return-object v0
.end method
