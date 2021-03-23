.class Lcom/neusoft/qdrivelink/music/service/MusicPlayService$1;
.super Landroid/telephony/PhoneStateListener;
.source "MusicPlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/music/service/MusicPlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$1;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 2

    .line 116
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPhoneStateListener onCallStateChanged state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "imcomingNumber;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "textwwwww"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$1;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$000(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)V

    goto :goto_0

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$1;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$000(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$1;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$100(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)V

    :goto_0
    return-void
.end method
