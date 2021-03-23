.class Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$2;
.super Ljava/lang/Object;
.source "LogFactor5InputDialog.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$2;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 0

    .line 96
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog$2;->this$0:Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/LogFactor5InputDialog;->hide()V

    return-void
.end method
