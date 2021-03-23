.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$15;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 0

    .line 924
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$15;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 926
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$15;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->selectAllLogTableColumns(Z)V

    .line 928
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$15;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateView()Ljava/util/List;

    move-result-object p1

    .line 929
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$15;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v0, v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/viewer/LogTable;->setView(Ljava/util/List;)V

    return-void
.end method
