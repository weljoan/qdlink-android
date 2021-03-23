.class public final Lcom/jakewharton/rxbinding/internal/Functions;
.super Ljava/lang/Object;
.source "Functions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding/internal/Functions$Always;
    }
.end annotation


# static fields
.field private static final ALWAYS_TRUE:Lcom/jakewharton/rxbinding/internal/Functions$Always;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rxbinding/internal/Functions$Always<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final FUNC0_ALWAYS_TRUE:Lrx/functions/Func0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final FUNC1_ALWAYS_TRUE:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    new-instance v0, Lcom/jakewharton/rxbinding/internal/Functions$Always;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/jakewharton/rxbinding/internal/Functions$Always;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/jakewharton/rxbinding/internal/Functions;->ALWAYS_TRUE:Lcom/jakewharton/rxbinding/internal/Functions$Always;

    .line 8
    sget-object v0, Lcom/jakewharton/rxbinding/internal/Functions;->ALWAYS_TRUE:Lcom/jakewharton/rxbinding/internal/Functions$Always;

    sput-object v0, Lcom/jakewharton/rxbinding/internal/Functions;->FUNC0_ALWAYS_TRUE:Lrx/functions/Func0;

    .line 9
    sput-object v0, Lcom/jakewharton/rxbinding/internal/Functions;->FUNC1_ALWAYS_TRUE:Lrx/functions/Func1;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method
