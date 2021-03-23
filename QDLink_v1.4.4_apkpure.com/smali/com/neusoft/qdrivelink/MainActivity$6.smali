.class Lcom/neusoft/qdrivelink/MainActivity$6;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/MainActivity;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/MainActivity;)V
    .locals 0

    .line 376
    iput-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$6;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 381
    check-cast p2, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    sput-object p2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    .line 382
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    if-eqz p1, :cond_0

    .line 383
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->getMusicPlayService()Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    move-result-object p1

    sput-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    .line 385
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    sget-object p2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->audioItems:Ljava/util/List;

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "localautoalbum"

    invoke-virtual {p1, p2, v0, v2, v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->overLocalMusic(Ljava/util/List;ILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
