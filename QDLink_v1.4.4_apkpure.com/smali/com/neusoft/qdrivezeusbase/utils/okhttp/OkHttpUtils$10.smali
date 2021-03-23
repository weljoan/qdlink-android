.class synthetic Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$10;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$neusoft$qdrivezeusbase$utils$okhttp$OkHttpUtils$REQUEST_DATA_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 419
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;->values()[Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$10;->$SwitchMap$com$neusoft$qdrivezeusbase$utils$okhttp$OkHttpUtils$REQUEST_DATA_TYPE:[I

    :try_start_0
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$10;->$SwitchMap$com$neusoft$qdrivezeusbase$utils$okhttp$OkHttpUtils$REQUEST_DATA_TYPE:[I

    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;->FORM:Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

    invoke-virtual {v1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$10;->$SwitchMap$com$neusoft$qdrivezeusbase$utils$okhttp$OkHttpUtils$REQUEST_DATA_TYPE:[I

    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;->JSON:Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

    invoke-virtual {v1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
