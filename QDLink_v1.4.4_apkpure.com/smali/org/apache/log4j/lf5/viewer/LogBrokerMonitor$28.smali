.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$28;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 0

    .line 1214
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$28;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 1216
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$28;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object p1, p1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object p1

    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$28;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->createLogRecordFilter()Lorg/apache/log4j/lf5/LogRecordFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->setLogRecordFilter(Lorg/apache/log4j/lf5/LogRecordFilter;)V

    .line 1218
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$28;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setNDCTextFilter(Ljava/lang/String;)V

    .line 1219
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$28;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object p1, p1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->refresh()V

    .line 1220
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$28;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateStatusLabel()V

    return-void
.end method
