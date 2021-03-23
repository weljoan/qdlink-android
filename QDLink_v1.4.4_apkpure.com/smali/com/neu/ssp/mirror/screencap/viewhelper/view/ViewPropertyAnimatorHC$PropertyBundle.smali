.class Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$PropertyBundle;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorHC.java"


# instance fields
.field a:I

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$NameValuesHolder;",
            ">;)V"
        }
    .end annotation

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$PropertyBundle;->a:I

    .line 144
    iput-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$PropertyBundle;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method final a(I)Z
    .locals 4

    .line 158
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$PropertyBundle;->a:I

    and-int/2addr v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$PropertyBundle;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 161
    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$PropertyBundle;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$NameValuesHolder;

    .line 162
    iget v3, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$NameValuesHolder;->a:I

    if-ne v3, p1, :cond_0

    .line 163
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$PropertyBundle;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 164
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$PropertyBundle;->a:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$PropertyBundle;->a:I

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
