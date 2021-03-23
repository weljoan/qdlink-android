.class public abstract Lcom/neusoft/qdrivezeusbase/view/xrefreshview/ScrollRunner;
.super Ljava/lang/Object;
.source "ScrollRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public isStopLoadMore:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/ScrollRunner;->isStopLoadMore:Z

    return-void
.end method
