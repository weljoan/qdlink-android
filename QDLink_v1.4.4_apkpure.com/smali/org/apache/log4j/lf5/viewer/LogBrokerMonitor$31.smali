.class Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;
.super Ljava/lang/Object;
.source "LogBrokerMonitor.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 0

    .line 1309
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 1311
    invoke-virtual {p1}, Ljava/awt/event/ActionEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/swing/JComboBox;

    .line 1312
    invoke-virtual {p1}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1313
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1315
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFontSizeSilently(I)V

    .line 1316
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->refreshDetailTextArea()V

    .line 1317
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor$31;->this$0:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    iput p1, v0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->_fontSize:I

    return-void
.end method
