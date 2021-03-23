.class public Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;
.super Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;
.source "LogFactor5LoadingDialog.java"


# direct methods
.method public constructor <init>(Ljavax/swing/JFrame;Ljava/lang/String;)V
    .locals 2

    const-string v0, "LogFactor5"

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Z)V

    .line 55
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    .line 56
    new-instance v0, Ljava/awt/FlowLayout;

    invoke-direct {v0}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {p1, v0}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 58
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    .line 59
    new-instance v1, Ljava/awt/GridBagLayout;

    invoke-direct {v1}, Ljava/awt/GridBagLayout;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 60
    invoke-virtual {p0, p2, v0}, Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;->wrapStringOnPanel(Ljava/lang/String;Ljava/awt/Container;)V

    .line 62
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;->getContentPane()Ljava/awt/Container;

    move-result-object p2

    const-string v1, "Center"

    invoke-virtual {p2, v0, v1}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;->getContentPane()Ljava/awt/Container;

    move-result-object p2

    const-string v0, "South"

    invoke-virtual {p2, p1, v0}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 64
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5LoadingDialog;->show()V

    return-void
.end method
