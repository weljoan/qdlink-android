.class public Lorg/apache/log4j/net/JMSSink;
.super Ljava/lang/Object;
.source "JMSSink.java"

# interfaces
.implements Ljavax/jms/MessageListener;


# static fields
.field static synthetic class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

.field static logger:Lorg/apache/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    sget-object v0, Lorg/apache/log4j/net/JMSSink;->class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.net.JMSSink"

    invoke-static {v0}, Lorg/apache/log4j/net/JMSSink;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/JMSSink;->class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Could not read JMS message."

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    :try_start_0
    new-instance v1, Ljavax/naming/InitialContext;

    invoke-direct {v1}, Ljavax/naming/InitialContext;-><init>()V

    .line 91
    invoke-static {v1, p1}, Lorg/apache/log4j/net/JMSSink;->lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/jms/TopicConnectionFactory;

    .line 94
    invoke-interface {p1, p3, p4}, Ljavax/jms/TopicConnectionFactory;->createTopicConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/jms/TopicConnection;

    move-result-object p1

    .line 97
    invoke-interface {p1}, Ljavax/jms/TopicConnection;->start()V

    const/4 p3, 0x0

    const/4 p4, 0x1

    .line 99
    invoke-interface {p1, p3, p4}, Ljavax/jms/TopicConnection;->createTopicSession(ZI)Ljavax/jms/TopicSession;

    move-result-object p1

    .line 102
    invoke-interface {v1, p2}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/jms/Topic;

    .line 104
    invoke-interface {p1, p2}, Ljavax/jms/TopicSession;->createSubscriber(Ljavax/jms/Topic;)Ljavax/jms/TopicSubscriber;

    move-result-object p1

    .line 106
    invoke-interface {p1, p0}, Ljavax/jms/TopicSubscriber;->setMessageListener(Ljavax/jms/MessageListener;)V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/naming/NamingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 113
    sget-object p2, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {p2, v0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 111
    sget-object p2, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {p2, v0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception p1

    .line 109
    sget-object p2, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    invoke-virtual {p2, v0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 49
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method protected static lookup(Ljavax/naming/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/naming/NamingException;
        }
    .end annotation

    .line 140
    :try_start_0
    invoke-interface {p0, p1}, Ljavax/naming/Context;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljavax/naming/NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 142
    sget-object v0, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find name ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "]."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 143
    throw p0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    array-length v0, p0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const-string v0, "Wrong number of arguments."

    .line 53
    invoke-static {v0}, Lorg/apache/log4j/net/JMSSink;->usage(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    .line 56
    aget-object v0, p0, v0

    const/4 v1, 0x1

    .line 57
    aget-object v1, p0, v1

    const/4 v2, 0x2

    .line 58
    aget-object v2, p0, v2

    const/4 v3, 0x3

    .line 59
    aget-object v3, p0, v3

    const/4 v4, 0x4

    .line 62
    aget-object p0, p0, v4

    const-string v4, ".xml"

    .line 64
    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 65
    invoke-static {p0}, Lorg/apache/log4j/xml/DOMConfigurator;->configure(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_1
    invoke-static {p0}, Lorg/apache/log4j/PropertyConfigurator;->configure(Ljava/lang/String;)V

    .line 70
    :goto_0
    new-instance p0, Lorg/apache/log4j/net/JMSSink;

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/log4j/net/JMSSink;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 74
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Type \"exit\" to quit JMSSink."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 76
    :cond_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exit"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Exiting. Kill the application if it does not exit due to daemon threads."

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method static usage(Ljava/lang/String;)V
    .locals 2

    .line 148
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Usage: java "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/apache/log4j/net/JMSSink;->class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.log4j.net.JMSSink"

    invoke-static {v1}, Lorg/apache/log4j/net/JMSSink;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/net/JMSSink;->class$org$apache$log4j$net$JMSSink:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " TopicConnectionFactoryBindingName TopicBindingName username password configFile"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 151
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method public onMessage(Ljavax/jms/Message;)V
    .locals 3

    .line 122
    :try_start_0
    instance-of v0, p1, Ljavax/jms/ObjectMessage;

    if-eqz v0, :cond_0

    .line 123
    check-cast p1, Ljavax/jms/ObjectMessage;

    .line 124
    invoke-interface {p1}, Ljavax/jms/ObjectMessage;->getObject()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/apache/log4j/spi/LoggingEvent;

    .line 125
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V

    goto :goto_0

    .line 128
    :cond_0
    sget-object v0, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Received message is of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Ljavax/jms/Message;->getJMSType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ", was expecting ObjectMessage."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/jms/JMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    sget-object v0, Lorg/apache/log4j/net/JMSSink;->logger:Lorg/apache/log4j/Logger;

    const-string v1, "Exception thrown while processing incoming message."

    invoke-virtual {v0, v1, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
