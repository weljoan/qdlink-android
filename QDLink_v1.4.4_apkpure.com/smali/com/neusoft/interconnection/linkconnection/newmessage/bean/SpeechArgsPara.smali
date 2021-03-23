.class public Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechArgsPara;
.super Ljava/lang/Object;
.source "SpeechArgsPara.java"


# instance fields
.field private AudioFormat:I

.field private ChannelConfig:I

.field private EncodingType:I

.field private SampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAudioFormat()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechArgsPara;->AudioFormat:I

    return v0
.end method

.method public getChannelConfig()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechArgsPara;->ChannelConfig:I

    return v0
.end method

.method public getEncodingType()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechArgsPara;->EncodingType:I

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechArgsPara;->SampleRate:I

    return v0
.end method

.method public setAudioFormat(I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechArgsPara;->AudioFormat:I

    return-void
.end method

.method public setChannelConfig(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechArgsPara;->ChannelConfig:I

    return-void
.end method

.method public setEncodingType(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechArgsPara;->EncodingType:I

    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechArgsPara;->SampleRate:I

    return-void
.end method
