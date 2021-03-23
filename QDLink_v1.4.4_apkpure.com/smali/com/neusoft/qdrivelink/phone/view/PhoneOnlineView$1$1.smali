.class Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1$1;
.super Ljava/lang/Object;
.source "PhoneOnlineView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1;->state(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1$1;->this$1:Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1$1;->this$1:Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView$1;->this$0:Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;->access$000(Lcom/neusoft/qdrivelink/phone/view/PhoneOnlineView;)V

    return-void
.end method
