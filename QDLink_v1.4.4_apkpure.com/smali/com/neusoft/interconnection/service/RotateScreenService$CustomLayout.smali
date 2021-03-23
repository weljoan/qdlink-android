.class public Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;
.super Landroid/view/WindowManager$LayoutParams;
.source "RotateScreenService.java"


# instance fields
.field private synthetic a:Lcom/neusoft/interconnection/service/RotateScreenService;


# direct methods
.method public constructor <init>(Lcom/neusoft/interconnection/service/RotateScreenService;I)V
    .locals 6

    .line 204
    iput-object p1, p0, Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;->a:Lcom/neusoft/interconnection/service/RotateScreenService;

    const/16 v1, 0x64

    const/16 v2, 0x64

    const/16 v3, 0x7d5

    const/16 v4, 0x7d9

    const/4 v5, -0x3

    move-object v0, p0

    .line 205
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 p1, 0x30

    .line 206
    iput p1, p0, Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;->gravity:I

    .line 208
    iput p2, p0, Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;->screenOrientation:I

    return-void
.end method
