.class public Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;
.super Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;
.source "LogFactor5InputDialog.java"


# static fields
.field public static final SIZE:I = 0x1e


# instance fields
.field private _textField:Ljavax/swing/JTextField;


# direct methods
.method public constructor <init>(Ljavax/swing/JFrame;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x1e

    .line 62
    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljavax/swing/JFrame;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    .line 74
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/log4j/lf5/viewer/LogFactor5Dialog;-><init>(Ljavax/swing/JFrame;Ljava/lang/String;Z)V

    .line 76
    new-instance p1, Ljavax/swing/JPanel;

    invoke-direct {p1}, Ljavax/swing/JPanel;-><init>()V

    .line 77
    new-instance p2, Ljava/awt/FlowLayout;

    invoke-direct {p2}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {p1, p2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 79
    new-instance p2, Ljavax/swing/JPanel;

    invoke-direct {p2}, Ljavax/swing/JPanel;-><init>()V

    .line 80
    new-instance v0, Ljava/awt/FlowLayout;

    invoke-direct {v0}, Ljava/awt/FlowLayout;-><init>()V

    invoke-virtual {p2, v0}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 81
    new-instance v0, Ljavax/swing/JLabel;

    invoke-direct {v0, p3}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 82
    new-instance p3, Ljavax/swing/JTextField;

    invoke-direct {p3, p4}, Ljavax/swing/JTextField;-><init>(I)V

    iput-object p3, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->_textField:Ljavax/swing/JTextField;

    .line 83
    iget-object p3, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->_textField:Ljavax/swing/JTextField;

    invoke-virtual {p2, p3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 85
    new-instance p3, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$1;

    invoke-direct {p3, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$1;-><init>(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)V

    invoke-virtual {p0, p3}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->addKeyListener(Ljava/awt/event/KeyListener;)V

    .line 93
    new-instance p3, Ljavax/swing/JButton;

    const-string p4, "Ok"

    invoke-direct {p3, p4}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 94
    new-instance p4, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$2;

    invoke-direct {p4, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$2;-><init>(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)V

    invoke-virtual {p3, p4}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 100
    new-instance p4, Ljavax/swing/JButton;

    const-string v0, "Cancel"

    invoke-direct {p4, v0}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    .line 101
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$3;

    invoke-direct {v0, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$3;-><init>(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)V

    invoke-virtual {p4, v0}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 111
    invoke-virtual {p1, p3}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 112
    invoke-virtual {p1, p4}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 113
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->getContentPane()Ljava/awt/Container;

    move-result-object p3

    const-string p4, "Center"

    invoke-virtual {p3, p2, p4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 114
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->getContentPane()Ljava/awt/Container;

    move-result-object p2

    const-string p3, "South"

    invoke-virtual {p2, p1, p3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->pack()V

    .line 116
    invoke-virtual {p0, p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->centerWindow(Ljava/awt/Window;)V

    .line 117
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->show()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)Ljavax/swing/JTextField;
    .locals 0

    .line 38
    iget-object p0, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->_textField:Ljavax/swing/JTextField;

    return-object p0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 2

    .line 124
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->_textField:Ljavax/swing/JTextField;

    invoke-virtual {v0}, Ljavax/swing/JTextField;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
