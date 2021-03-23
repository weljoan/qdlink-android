.class public Lcom/neusoft/sdk/wangyilibinter/bean/song/SongBean;
.super Ljava/lang/Object;
.source "SongBean.java"


# instance fields
.field private code:I

.field private songs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;",
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
.method public getCode()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/SongBean;->code:I

    return v0
.end method

.method public getSongs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/SongBean;->songs:Ljava/util/List;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/SongBean;->code:I

    return-void
.end method

.method public setSongs(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/SongBean;->songs:Ljava/util/List;

    return-void
.end method
