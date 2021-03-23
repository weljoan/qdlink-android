.class synthetic Lcn/dr/lib/log/DRLogHelper$1;
.super Ljava/lang/Object;
.source "DRLogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dr/lib/log/DRLogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$dr$lib$log$DRLogHelper$LogType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 42
    invoke-static {}, Lcn/dr/lib/log/DRLogHelper$LogType;->values()[Lcn/dr/lib/log/DRLogHelper$LogType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/dr/lib/log/DRLogHelper$1;->$SwitchMap$cn$dr$lib$log$DRLogHelper$LogType:[I

    :try_start_0
    sget-object v0, Lcn/dr/lib/log/DRLogHelper$1;->$SwitchMap$cn$dr$lib$log$DRLogHelper$LogType:[I

    sget-object v1, Lcn/dr/lib/log/DRLogHelper$LogType;->TYPE_NONE:Lcn/dr/lib/log/DRLogHelper$LogType;

    invoke-virtual {v1}, Lcn/dr/lib/log/DRLogHelper$LogType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcn/dr/lib/log/DRLogHelper$1;->$SwitchMap$cn$dr$lib$log$DRLogHelper$LogType:[I

    sget-object v1, Lcn/dr/lib/log/DRLogHelper$LogType;->TYPE_LOG4J:Lcn/dr/lib/log/DRLogHelper$LogType;

    invoke-virtual {v1}, Lcn/dr/lib/log/DRLogHelper$LogType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcn/dr/lib/log/DRLogHelper$1;->$SwitchMap$cn$dr$lib$log$DRLogHelper$LogType:[I

    sget-object v1, Lcn/dr/lib/log/DRLogHelper$LogType;->TYPE_ALL:Lcn/dr/lib/log/DRLogHelper$LogType;

    invoke-virtual {v1}, Lcn/dr/lib/log/DRLogHelper$LogType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
