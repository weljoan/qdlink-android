.class final Ldemo/Pinyin4jAppletDemo$1;
.super Ljava/awt/event/WindowAdapter;


# instance fields
.field private final synthetic val$appletDemo:Ldemo/Pinyin4jAppletDemo;


# direct methods
.method constructor <init>(Ldemo/Pinyin4jAppletDemo;)V
    .locals 0

    invoke-direct {p0}, Ljava/awt/event/WindowAdapter;-><init>()V

    iput-object p1, p0, Ldemo/Pinyin4jAppletDemo$1;->val$appletDemo:Ldemo/Pinyin4jAppletDemo;

    return-void
.end method


# virtual methods
.method public windowClosing(Ljava/awt/event/WindowEvent;)V
    .locals 0

    iget-object p1, p0, Ldemo/Pinyin4jAppletDemo$1;->val$appletDemo:Ldemo/Pinyin4jAppletDemo;

    invoke-virtual {p1}, Ldemo/Pinyin4jAppletDemo;->stop()V

    iget-object p1, p0, Ldemo/Pinyin4jAppletDemo$1;->val$appletDemo:Ldemo/Pinyin4jAppletDemo;

    invoke-virtual {p1}, Ldemo/Pinyin4jAppletDemo;->destroy()V

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
