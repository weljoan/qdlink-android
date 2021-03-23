.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$27;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 0

    .line 1188
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$27;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3

    .line 1190
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$27;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object p1, p1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_logMonitorFrame:Ljavax/swing/JFrame;

    const-string v0, "Sort by this NDC: "

    const-string v1, "Sort Log Records by NDC"

    const/4 v2, 0x3

    invoke-static {p1, v0, v1, v2}, Ljavax/swing/JOptionPane;->showInputDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 1197
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$27;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setNDCTextFilter(Ljava/lang/String;)V

    .line 1198
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$27;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->sortByNDC()V

    .line 1199
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$27;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object p1, p1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/LogTable;->getFilteredLogTableModel()Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/FilteredLogTableModel;->refresh()V

    .line 1200
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$27;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->updateStatusLabel()V

    return-void
.end method
