.class public interface abstract Lcom/neusoft/qdrivelink/music/service/QDIplayer;
.super Ljava/lang/Object;
.source "QDIplayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;,
        Lcom/neusoft/qdrivelink/music/service/QDIplayer$PlayerType;,
        Lcom/neusoft/qdrivelink/music/service/QDIplayer$Time;
    }
.end annotation


# virtual methods
.method public abstract cancelTimer()V
.end method

.method public abstract getCurrentPosition()J
.end method

.method public abstract getDuration()I
.end method

.method public abstract getPlayStatus()Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;
.end method

.method public abstract idle()V
.end method

.method public abstract pause()Z
.end method

.method public abstract playUrl(Ljava/lang/String;)V
.end method

.method public abstract runTimer()V
.end method

.method public abstract seekTo(II)V
.end method

.method public abstract setPlayCallback(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;)V
.end method

.method public abstract setStopStatus()V
.end method

.method public abstract start()Z
.end method

.method public abstract stop()V
.end method
