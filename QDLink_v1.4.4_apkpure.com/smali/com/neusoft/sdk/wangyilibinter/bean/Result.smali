.class public Lcom/neusoft/sdk/wangyilibinter/bean/Result;
.super Ljava/lang/Object;
.source "Result.java"


# instance fields
.field private songCount:I

.field private songs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSongCount()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->songCount:I

    return v0
.end method

.method public getSongs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->songs:Ljava/util/List;

    return-object v0
.end method

.method public setSongCount(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->songCount:I

    return-void
.end method

.method public setSongs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->songs:Ljava/util/List;

    return-void
.end method
