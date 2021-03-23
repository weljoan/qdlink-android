.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$30;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 0

    .line 1288
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$30;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 4

    .line 1290
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/swing/JComboBox;

    .line 1291
    invoke-virtual {p1}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1292
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$30;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget-object v0, v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_table:Lorg/apache/log4j/lf5/viewer/LogTable;

    new-instance v1, Ljava/awt/Font;

    iget-object v2, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$30;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iget v2, v2, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontSize:I

    const/4 v3, 0x0

    invoke-direct {v1, p1, v3, v2}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogTable;->setFont(Ljava/awt/Font;)V

    .line 1293
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$30;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iput-object p1, v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontName:Ljava/lang/String;

    return-void
.end method
