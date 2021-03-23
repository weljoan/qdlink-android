.class Lorg/apache/log4j/chainsaw/DetailPanel;
.super Ljavax/swing/JPanel;
.source "DetailPanel.java"

# interfaces
.implements Ljavax/swing/event/ListSelectionListener;


# static fields
.field private static final FORMATTER:Ljava/text/MessageFormat;

.field private static final LOG:Lorg/apache/log4j/Logger;

.field static synthetic class$org$apache$log4j$chainsaw$DetailPanel:Ljava/lang/Class;


# instance fields
.field private final mDetails:Ljavax/swing/JEditorPane;

.field private final mModel:Lorg/apache/log4j/chainsaw/MyTableModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    sget-object v0, Lorg/apache/log4j/chainsaw/DetailPanel;->class$org$apache$log4j$chainsaw$DetailPanel:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.chainsaw.DetailPanel"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/DetailPanel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/DetailPanel;->class$org$apache$log4j$chainsaw$DetailPanel:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/DetailPanel;->LOG:Lorg/apache/log4j/Logger;

    .line 46
    new-instance v0, Ljava/text/MessageFormat;

    const-string v1, "<b>Time:</b> <code>{0,time,medium}</code>&nbsp;&nbsp;<b>Priority:</b> <code>{1}</code>&nbsp;&nbsp;<b>Thread:</b> <code>{2}</code>&nbsp;&nbsp;<b>NDC:</b> <code>{3}</code><br><b>Logger:</b> <code>{4}</code><br><b>Location:</b> <code>{5}</code><br><b>Message:</b><pre>{6}</pre><b>Throwable:</b><pre>{7}</pre>"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/chainsaw/DetailPanel;->FORMATTER:Ljava/text/MessageFormat;

    return-void
.end method

.method constructor <init>(Ljavax/swing/JTable;Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    .line 70
    iput-object p2, p0, Lorg/apache/log4j/chainsaw/DetailPanel;->mModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    .line 71
    new-instance p2, Ljava/awt/BorderLayout;

    invoke-direct {p2}, Ljava/awt/BorderLayout;-><init>()V

    invoke-virtual {p0, p2}, Lorg/apache/log4j/chainsaw/DetailPanel;->setLayout(Ljava/awt/LayoutManager;)V

    const-string p2, "Details: "

    .line 72
    invoke-static {p2}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljava/lang/String;)Ljavax/swing/border/TitledBorder;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/log4j/chainsaw/DetailPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 74
    new-instance p2, Ljavax/swing/JEditorPane;

    invoke-direct {p2}, Ljavax/swing/JEditorPane;-><init>()V

    iput-object p2, p0, Lorg/apache/log4j/chainsaw/DetailPanel;->mDetails:Ljavax/swing/JEditorPane;

    .line 75
    iget-object p2, p0, Lorg/apache/log4j/chainsaw/DetailPanel;->mDetails:Ljavax/swing/JEditorPane;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljavax/swing/JEditorPane;->setEditable(Z)V

    .line 76
    iget-object p2, p0, Lorg/apache/log4j/chainsaw/DetailPanel;->mDetails:Ljavax/swing/JEditorPane;

    const-string v0, "text/html"

    invoke-virtual {p2, v0}, Ljavax/swing/JEditorPane;->setContentType(Ljava/lang/String;)V

    .line 77
    new-instance p2, Ljavax/swing/JScrollPane;

    iget-object v0, p0, Lorg/apache/log4j/chainsaw/DetailPanel;->mDetails:Ljavax/swing/JEditorPane;

    invoke-direct {p2, v0}, Ljavax/swing/JScrollPane;-><init>(Ljava/awt/Component;)V

    const-string v0, "Center"

    invoke-virtual {p0, p2, v0}, Lorg/apache/log4j/chainsaw/DetailPanel;->add(Ljava/awt/Component;Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p1}, Ljavax/swing/JTable;->getSelectionModel()Ljavax/swing/ListSelectionModel;

    move-result-object p1

    .line 80
    invoke-interface {p1, p0}, Ljavax/swing/ListSelectionModel;->addListSelectionListener(Ljavax/swing/event/ListSelectionListener;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 43
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

.method private escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 148
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 149
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4

    const/16 v3, 0x26

    if-eq v2, v3, :cond_3

    const/16 v3, 0x3c

    if-eq v2, v3, :cond_2

    const/16 v3, 0x3e

    if-eq v2, v3, :cond_1

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string v2, "&gt;"

    .line 155
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string v2, "&lt;"

    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const-string v2, "&amp;"

    .line 161
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const-string v2, "&quot;"

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static getThrowableStrRep(Lorg/apache/log4j/chainsaw/EventDetails;)Ljava/lang/String;
    .locals 3

    .line 123
    invoke-virtual {p0}, Lorg/apache/log4j/chainsaw/EventDetails;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 129
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 130
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 133
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public valueChanged(Ljavax/swing/event/ListSelectionEvent;)V
    .locals 4

    .line 86
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getValueIsAdjusting()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 90
    :cond_0
    invoke-virtual {p1}, Ljavax/swing/event/ListSelectionEvent;->getSource()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/swing/ListSelectionModel;

    .line 91
    invoke-interface {p1}, Ljavax/swing/ListSelectionModel;->isSelectionEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object p1, p0, Lorg/apache/log4j/chainsaw/DetailPanel;->mDetails:Ljavax/swing/JEditorPane;

    const-string v0, "Nothing selected"

    invoke-virtual {p1, v0}, Ljavax/swing/JEditorPane;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_1
    invoke-interface {p1}, Ljavax/swing/ListSelectionModel;->getMinSelectionIndex()I

    move-result p1

    .line 95
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/DetailPanel;->mModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/chainsaw/MyTableModel;->getEventDetails(I)Lorg/apache/log4j/chainsaw/EventDetails;

    move-result-object p1

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 96
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getTimeStamp()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getPriority()Lorg/apache/log4j/Priority;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/log4j/chainsaw/DetailPanel;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getNDC()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/log4j/chainsaw/DetailPanel;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getCategoryName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/log4j/chainsaw/DetailPanel;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getLocationDetails()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/log4j/chainsaw/DetailPanel;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x6

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/EventDetails;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/log4j/chainsaw/DetailPanel;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x7

    invoke-static {p1}, Lorg/apache/log4j/chainsaw/DetailPanel;->getThrowableStrRep(Lorg/apache/log4j/chainsaw/EventDetails;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/log4j/chainsaw/DetailPanel;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    .line 107
    iget-object p1, p0, Lorg/apache/log4j/chainsaw/DetailPanel;->mDetails:Ljavax/swing/JEditorPane;

    sget-object v1, Lorg/apache/log4j/chainsaw/DetailPanel;->FORMATTER:Ljava/text/MessageFormat;

    invoke-virtual {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljavax/swing/JEditorPane;->setText(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lorg/apache/log4j/chainsaw/DetailPanel;->mDetails:Ljavax/swing/JEditorPane;

    invoke-virtual {p1, v2}, Ljavax/swing/JEditorPane;->setCaretPosition(I)V

    :goto_0
    return-void
.end method
