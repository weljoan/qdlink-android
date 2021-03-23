.class Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog$1;
.super Ljava/lang/Object;
.source "LogFactor5ErrorDialog.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog$1;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 0

    .line 60
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog$1;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/LogFactor5ErrorDialog;->hide()V

    return-void
.end method
