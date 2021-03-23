.class public Lcom/neusoft/qdrivelink/server/MyAccessibilityService;
.super Landroid/accessibilityservice/AccessibilityService;
.source "MyAccessibilityService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AccessService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    const-string p1, "AccessService"

    const-string v0, "MyAccessibilityService onAccessibilityEvent"

    .line 22
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInterrupt()V
    .locals 2

    const-string v0, "AccessService"

    const-string v1, "MyAccessibilityService onInterrupt"

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onServiceConnected()V
    .locals 2

    .line 16
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onServiceConnected()V

    const-string v0, "AccessService"

    const-string v1, "MyAccessibilityService onServiceConnected"

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
