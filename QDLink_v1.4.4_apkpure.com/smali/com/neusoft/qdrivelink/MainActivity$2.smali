.class Lcom/neusoft/qdrivelink/MainActivity$2;
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

    .line 107
    iput-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$2;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$2;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    check-cast p2, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/MainActivity;->access$002(Lcom/neusoft/qdrivelink/MainActivity;Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    .line 111
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$2;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/MainActivity;->access$000(Lcom/neusoft/qdrivelink/MainActivity;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/qdrivelink/MainActivity$2;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/MainActivity;->access$100(Lcom/neusoft/qdrivelink/MainActivity;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->setPhoneMainStateInfoListener(Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 116
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$2;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/MainActivity;->access$000(Lcom/neusoft/qdrivelink/MainActivity;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;->setPhoneMainStateInfoListener(Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;)V

    .line 117
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$2;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {p1, v0}, Lcom/neusoft/qdrivelink/MainActivity;->access$002(Lcom/neusoft/qdrivelink/MainActivity;Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    return-void
.end method
