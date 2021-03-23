.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$19;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 0

    .line 1011
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$19;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 1013
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$19;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->requestOpenMRU(Ljava/awt/event/ActionEvent;)V

    return-void
.end method
