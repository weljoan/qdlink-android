.class Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$3;
.super Ljava/lang/Object;
.source "LogFactor5InputDialog.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$3;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 103
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$3;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->hide()V

    .line 107
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$3;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    invoke-static {p1}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->access$000(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)Ljavax/swing/JTextField;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljavax/swing/JTextField;->setText(Ljava/lang/String;)V

    return-void
.end method
