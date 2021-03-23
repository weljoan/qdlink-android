.class Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay$1;
.super Ljava/lang/Object;
.source "SecondDisplay.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private synthetic a:Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;


# direct methods
.method constructor <init>(Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay$1;->a:Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
