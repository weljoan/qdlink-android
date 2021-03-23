.class public Lorg/apache/log4j/chainsaw/Main;
.super Ljavax/swing/JFrame;
.source "Main.java"


# static fields
.field private static final DEFAULT_PORT:I = 0x115d

.field private static final LOG:Lorg/apache/log4j/Logger;

.field public static final PORT_PROP_NAME:Ljava/lang/String; = "chainsaw.port"

.field static synthetic class$org$apache$log4j$chainsaw$Main:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    sget-object v0, Lorg/apache/log4j/chainsaw/Main;->class$org$apache$log4j$chainsaw$Main:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.chainsaw.Main"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/Main;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/Main;->class$org$apache$log4j$chainsaw$Main:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    const-string v0, "CHAINSAW"

    const-string v1, "CHAINSAW - Log4J Log Viewer"

    .line 61
    invoke-direct {p0, v1}, Ljavax/swing/JFrame;-><init>(Ljava/lang/String;)V

    .line 63
    new-instance v1, Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-direct {v1}, Lorg/apache/log4j/chainsaw/MyTableModel;-><init>()V

    .line 66
    new-instance v2, Ljavax/swing/JMenuBar;

    invoke-direct {v2}, Ljavax/swing/JMenuBar;-><init>()V

    .line 67
    invoke-virtual {p0, v2}, Lorg/apache/log4j/chainsaw/Main;->setJMenuBar(Ljavax/swing/JMenuBar;)V

    .line 68
    new-instance v3, Ljavax/swing/JMenu;

    const-string v4, "File"

    invoke-direct {v3, v4}, Ljavax/swing/JMenu;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v2, v3}, Ljavax/swing/JMenuBar;->add(Ljavax/swing/JMenu;)Ljavax/swing/JMenu;

    const/4 v2, 0x0

    .line 72
    :try_start_0
    new-instance v4, Lorg/apache/log4j/chainsaw/LoadXMLAction;

    invoke-direct {v4, p0, v1}, Lorg/apache/log4j/chainsaw/LoadXMLAction;-><init>(Ljavax/swing/JFrame;Lorg/apache/log4j/chainsaw/MyTableModel;)V

    .line 73
    new-instance v5, Ljavax/swing/JMenuItem;

    const-string v6, "Load file..."

    invoke-direct {v5, v6}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v3, v5}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 75
    invoke-virtual {v5, v4}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    .line 84
    sget-object v5, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    const-string v6, "Unable to create the action to load XML files"

    invoke-virtual {v5, v6, v4}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-string v4, "Unable to create a XML parser - unable to load XML events."

    .line 85
    invoke-static {p0, v4, v0, v2}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    goto :goto_0

    :catch_1
    move-exception v4

    .line 77
    sget-object v5, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    const-string v6, "Missing classes for XML parser"

    invoke-virtual {v5, v6, v4}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-string v4, "XML parser not in classpath - unable to load XML events."

    .line 78
    invoke-static {p0, v4, v0, v2}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 92
    :goto_0
    new-instance v0, Ljavax/swing/JMenuItem;

    const-string v4, "Exit"

    invoke-direct {v0, v4}, Ljavax/swing/JMenuItem;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v3, v0}, Ljavax/swing/JMenu;->add(Ljavax/swing/JMenuItem;)Ljavax/swing/JMenuItem;

    .line 94
    sget-object v3, Lorg/apache/log4j/chainsaw/ExitAction;->INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

    invoke-virtual {v0, v3}, Ljavax/swing/JMenuItem;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 97
    new-instance v0, Lorg/apache/log4j/chainsaw/ControlPanel;

    invoke-direct {v0, v1}, Lorg/apache/log4j/chainsaw/ControlPanel;-><init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V

    .line 98
    invoke-virtual {p0}, Lorg/apache/log4j/chainsaw/Main;->getContentPane()Ljava/awt/Container;

    move-result-object v3

    const-string v4, "North"

    invoke-virtual {v3, v0, v4}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 101
    new-instance v0, Ljavax/swing/JTable;

    invoke-direct {v0, v1}, Ljavax/swing/JTable;-><init>(Ljavax/swing/table/TableModel;)V

    .line 102
    invoke-virtual {v0, v2}, Ljavax/swing/JTable;->setSelectionMode(I)V

    .line 103
    new-instance v3, Ljavax/swing/JScrollPane;

    invoke-direct {v3, v0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    const-string v4, "Events: "

    .line 104
    invoke-static {v4}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljava/lang/String;)Ljavax/swing/border/TitledBorder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/swing/JScrollPane;->setBorder(Ljavax/swing/border/Border;)V

    .line 105
    new-instance v4, Ljava/awt/Dimension;

    const/16 v5, 0x12c

    const/16 v6, 0x384

    invoke-direct {v4, v6, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v3, v4}, Ljavax/swing/JScrollPane;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 108
    new-instance v4, Lorg/apache/log4j/chainsaw/DetailPanel;

    invoke-direct {v4, v0, v1}, Lorg/apache/log4j/chainsaw/DetailPanel;-><init>(Ljavax/swing/JTable;Lorg/apache/log4j/chainsaw/MyTableModel;)V

    .line 109
    new-instance v0, Ljava/awt/Dimension;

    invoke-direct {v0, v6, v5}, Ljava/awt/Dimension;-><init>(II)V

    invoke-virtual {v4, v0}, Ljavax/swing/JPanel;->setPreferredSize(Ljava/awt/Dimension;)V

    .line 112
    new-instance v0, Ljavax/swing/JSplitPane;

    invoke-direct {v0, v2, v3, v4}, Ljavax/swing/JSplitPane;-><init>(ILjava/awt/Component;Ljava/awt/Component;)V

    .line 114
    invoke-virtual {p0}, Lorg/apache/log4j/chainsaw/Main;->getContentPane()Ljava/awt/Container;

    move-result-object v2

    const-string v3, "Center"

    invoke-virtual {v2, v0, v3}, Ljava/awt/Container;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 116
    new-instance v0, Lorg/apache/log4j/chainsaw/Main$1;

    invoke-direct {v0, p0}, Lorg/apache/log4j/chainsaw/Main$1;-><init>(Lorg/apache/log4j/chainsaw/Main;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/chainsaw/Main;->addWindowListener(Ljava/awt/event/WindowListener;)V

    .line 122
    invoke-virtual {p0}, Lorg/apache/log4j/chainsaw/Main;->pack()V

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, v0}, Lorg/apache/log4j/chainsaw/Main;->setVisible(Z)V

    .line 125
    invoke-direct {p0, v1}, Lorg/apache/log4j/chainsaw/Main;->setupReceiver(Lorg/apache/log4j/chainsaw/MyTableModel;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 54
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

.method private static initLog4J()V
    .locals 3

    .line 174
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "log4j.rootLogger"

    const-string v2, "DEBUG, A1"

    .line 175
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "log4j.appender.A1"

    const-string v2, "org.apache.log4j.ConsoleAppender"

    .line 176
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v1, "log4j.appender.A1.layout"

    const-string v2, "org.apache.log4j.TTCCLayout"

    .line 178
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 180
    invoke-static {v0}, Lorg/apache/log4j/PropertyConfigurator;->configure(Ljava/util/Properties;)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    .line 189
    invoke-static {}, Lorg/apache/log4j/chainsaw/Main;->initLog4J()V

    .line 190
    new-instance p0, Lorg/apache/log4j/chainsaw/Main;

    invoke-direct {p0}, Lorg/apache/log4j/chainsaw/Main;-><init>()V

    return-void
.end method

.method private setupReceiver(Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .locals 7

    const-string v0, "chainsaw.port"

    .line 135
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "CHAINSAW"

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    :catch_0
    sget-object v4, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Unable to parse chainsaw.port property with value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/log4j/Logger;->fatal(Ljava/lang/Object;)V

    .line 142
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Unable to parse port number from \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\', quitting."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3, v2}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 148
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :cond_0
    const/16 v0, 0x115d

    .line 153
    :goto_0
    :try_start_1
    new-instance v4, Lorg/apache/log4j/chainsaw/LoggingReceiver;

    invoke-direct {v4, p1, v0}, Lorg/apache/log4j/chainsaw/LoggingReceiver;-><init>(Lorg/apache/log4j/chainsaw/MyTableModel;I)V

    .line 154
    invoke-virtual {v4}, Lorg/apache/log4j/chainsaw/LoggingReceiver;->start()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 156
    sget-object v4, Lorg/apache/log4j/chainsaw/Main;->LOG:Lorg/apache/log4j/Logger;

    const-string v5, "Unable to connect to socket server, quiting"

    invoke-virtual {v4, v5, p1}, Lorg/apache/log4j/Logger;->fatal(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 157
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Unable to create socket on port "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v0, ", quitting."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v3, v2}, Ljavax/swing/JOptionPane;->showMessageDialog(Ljava/awt/Component;Ljava/lang/Object;Ljava/lang/String;I)V

    .line 162
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    :goto_1
    return-void
.end method
