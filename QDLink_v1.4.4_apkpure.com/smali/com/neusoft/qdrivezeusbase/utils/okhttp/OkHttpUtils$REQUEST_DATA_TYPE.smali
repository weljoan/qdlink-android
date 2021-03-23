.class final enum Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;
.super Ljava/lang/Enum;
.source "OkHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "REQUEST_DATA_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

.field public static final enum FORM:Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

.field public static final enum JSON:Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    new-instance v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

    const/4 v1, 0x0

    const-string v2, "FORM"

    invoke-direct {v0, v2, v1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;->FORM:Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

    .line 50
    new-instance v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

    const/4 v2, 0x1

    const-string v3, "JSON"

    invoke-direct {v0, v3, v2}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;->JSON:Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

    .line 48
    sget-object v3, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;->FORM:Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

    aput-object v3, v0, v1

    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;->JSON:Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

    aput-object v1, v0, v2

    sput-object v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;->$VALUES:[Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;
    .locals 1

    .line 48
    const-class v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;
    .locals 1

    .line 48
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;->$VALUES:[Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

    invoke-virtual {v0}, [Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

    return-object v0
.end method
