.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$2;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

.field private final synthetic val$lr:Lorg/apache/log4j/lf5/LogRecord;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;Lorg/apache/log4j/lf5/LogRecord;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$2;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iput-object p2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$2;->val$lr:Lorg/apache/log4j/lf5/LogRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 260
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$2;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v0, v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_categoryExplorerTree:Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerTree;->getExplorerModel()Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$2;->val$lr:Lorg/apache/log4j/lf5/LogRecord;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryExplorerModel;->addLogRecord(Lorg/apache/log4j/lf5/LogRecord;)V

    .line 261
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$2;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v0, v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$2;->val$lr:Lorg/apache/log4j/lf5/LogRecord;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->addLogRecord(Lorg/apache/log4j/lf5/LogRecord;)Z

    .line 262
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$2;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateStatusLabel()V

    return-void
.end method
