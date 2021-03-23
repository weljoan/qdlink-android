.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$24;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 0

    .line 1117
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$24;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 1119
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$24;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    const-string v0, "LogFactor5 Properties"

    invoke-virtual {p1, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->showPropertiesDialog(Ljava/lang/String;)V

    return-void
.end method
