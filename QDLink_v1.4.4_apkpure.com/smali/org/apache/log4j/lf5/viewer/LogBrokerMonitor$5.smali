.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$5;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 0

    .line 657
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$5;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 659
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$5;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->getRecordsDisplayedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
