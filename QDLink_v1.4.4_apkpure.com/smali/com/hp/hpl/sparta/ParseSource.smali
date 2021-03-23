.class public interface abstract Lcom/hp/hpl/sparta/ParseSource;
.super Ljava/lang/Object;


# static fields
.field public static final DEFAULT_LOG:Lcom/hp/hpl/sparta/ParseLog;

.field public static final MAXLOOKAHEAD:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/hp/hpl/sparta/DefaultLog;

    invoke-direct {v0}, Lcom/hp/hpl/sparta/DefaultLog;-><init>()V

    sput-object v0, Lcom/hp/hpl/sparta/ParseSource;->DEFAULT_LOG:Lcom/hp/hpl/sparta/ParseLog;

    const/16 v0, 0x47

    sput v0, Lcom/hp/hpl/sparta/ParseSource;->MAXLOOKAHEAD:I

    return-void
.end method


# virtual methods
.method public abstract getLineNumber()I
.end method

.method public abstract getSystemId()Ljava/lang/String;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
