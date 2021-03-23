.class public final enum Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;
.super Ljava/lang/Enum;
.source "QDIplayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/music/service/QDIplayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PlayerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;

.field public static final enum IJK_PLAYER:Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;

.field public static final enum MEDIA_PLAYER:Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 76
    new-instance v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;

    const/4 v1, 0x0

    const-string v2, "IJK_PLAYER"

    invoke-direct {v0, v2, v1}, Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;->IJK_PLAYER:Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;

    .line 77
    new-instance v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;

    const/4 v2, 0x1

    const-string v3, "MEDIA_PLAYER"

    invoke-direct {v0, v3, v2}, Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;->MEDIA_PLAYER:Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;

    .line 75
    sget-object v3, Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;->IJK_PLAYER:Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;

    aput-object v3, v0, v1

    sget-object v1, Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;->MEDIA_PLAYER:Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;->$VALUES:[Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;
    .locals 1

    .line 75
    const-class v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;

    return-object p0
.end method

.method public static values()[Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;
    .locals 1

    .line 75
    sget-object v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;->$VALUES:[Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;

    invoke-virtual {v0}, [Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;

    return-object v0
.end method
