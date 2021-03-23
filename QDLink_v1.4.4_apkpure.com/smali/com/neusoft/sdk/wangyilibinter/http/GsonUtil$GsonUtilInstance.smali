.class Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil$GsonUtilInstance;
.super Ljava/lang/Object;
.source "GsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GsonUtilInstance"
.end annotation


# static fields
.field private static final instance:Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;-><init>(Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil$1;)V

    sput-object v0, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil$GsonUtilInstance;->instance:Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;
    .locals 1

    .line 21
    sget-object v0, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil$GsonUtilInstance;->instance:Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;

    return-object v0
.end method
