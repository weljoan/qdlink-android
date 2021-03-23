.class public final enum Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

.field public static final enum HIGH:Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

.field public static final enum LOW:Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

.field public static final enum NORMAL:Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    const/4 v1, 0x0

    const-string v2, "HIGH"

    invoke-direct {v0, v2, v1}, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;->HIGH:Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    new-instance v0, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    const/4 v2, 0x1

    const-string v3, "NORMAL"

    invoke-direct {v0, v3, v2}, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;->NORMAL:Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    new-instance v0, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    const/4 v3, 0x2

    const-string v4, "LOW"

    invoke-direct {v0, v4, v3}, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;->LOW:Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    .line 9
    sget-object v4, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;->HIGH:Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    aput-object v4, v0, v1

    sget-object v1, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;->NORMAL:Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;->LOW:Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    aput-object v1, v0, v3

    sput-object v0, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;->$VALUES:[Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;
    .locals 1

    .line 9
    const-class v0, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    return-object p0
.end method

.method public static values()[Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;
    .locals 1

    .line 9
    sget-object v0, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;->$VALUES:[Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    invoke-virtual {v0}, [Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    return-object v0
.end method
