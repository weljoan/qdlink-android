.class public interface abstract Lcom/neusoft/qdrivelink/music/bean/Player$PlayCallback;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/music/bean/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PlayCallback"
.end annotation


# virtual methods
.method public abstract onPlayCompletion()V
.end method

.method public abstract onPrepared(II)V
.end method

.method public abstract onSeekChanged(IILjava/lang/Object;)V
.end method
