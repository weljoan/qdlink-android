.class Lorg/apache/log4j/chainsaw/ControlPanel;
.super Ljavax/swing/JPanel;
.source "ControlPanel.java"


# static fields
.field private static final LOG:Lorg/apache/log4j/Logger;

.field static synthetic class$org$apache$log4j$chainsaw$ControlPanel:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    sget-object v0, Lorg/apache/log4j/chainsaw/ControlPanel;->class$org$apache$log4j$chainsaw$ControlPanel:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.chainsaw.ControlPanel"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/ControlPanel;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/ControlPanel;->class$org$apache$log4j$chainsaw$ControlPanel:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/ControlPanel;->LOG:Lorg/apache/log4j/Logger;

    return-void
.end method

.method constructor <init>(Lorg/apache/log4j/chainsaw/MyTableModel;)V
    .locals 11

    .line 50
    invoke-direct {p0}, Ljavax/swing/JPanel;-><init>()V

    const-string v0, "Controls: "

    .line 51
    invoke-static {v0}, Ljavax/swing/BorderFactory;->createTitledBorder(Ljava/lang/String;)Ljavax/swing/border/TitledBorder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/chainsaw/ControlPanel;->setBorder(Ljavax/swing/border/Border;)V

    .line 52
    new-instance v0, Ljava/awt/GridBagLayout;

    invoke-direct {v0}, Ljava/awt/GridBagLayout;-><init>()V

    .line 53
    new-instance v1, Ljava/awt/GridBagConstraints;

    invoke-direct {v1}, Ljava/awt/GridBagConstraints;-><init>()V

    .line 54
    invoke-virtual {p0, v0}, Lorg/apache/log4j/chainsaw/ControlPanel;->setLayout(Ljava/awt/LayoutManager;)V

    const/4 v2, 0x5

    .line 57
    iput v2, v1, Ljava/awt/GridBagConstraints;->ipadx:I

    .line 58
    iput v2, v1, Ljava/awt/GridBagConstraints;->ipady:I

    const/4 v3, 0x0

    .line 61
    iput v3, v1, Ljava/awt/GridBagConstraints;->gridx:I

    const/16 v4, 0xd

    .line 62
    iput v4, v1, Ljava/awt/GridBagConstraints;->anchor:I

    .line 64
    iput v3, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 65
    new-instance v5, Ljavax/swing/JLabel;

    const-string v6, "Filter Level:"

    invoke-direct {v5, v6}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v5, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 67
    invoke-virtual {p0, v5}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 69
    iget v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 70
    new-instance v5, Ljavax/swing/JLabel;

    const-string v7, "Filter Thread:"

    invoke-direct {v5, v7}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v5, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 72
    invoke-virtual {p0, v5}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 74
    iget v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v5, v6

    iput v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 75
    new-instance v5, Ljavax/swing/JLabel;

    const-string v7, "Filter Logger:"

    invoke-direct {v5, v7}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, v5, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 77
    invoke-virtual {p0, v5}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 79
    iget v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v5, v6

    iput v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 80
    new-instance v5, Ljavax/swing/JLabel;

    const-string v7, "Filter NDC:"

    invoke-direct {v5, v7}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v5, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 82
    invoke-virtual {p0, v5}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 84
    iget v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v5, v6

    iput v5, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 85
    new-instance v5, Ljavax/swing/JLabel;

    const-string v7, "Filter Message:"

    invoke-direct {v5, v7}, Ljavax/swing/JLabel;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0, v5, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 87
    invoke-virtual {p0, v5}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    .line 90
    iput-wide v7, v1, Ljava/awt/GridBagConstraints;->weightx:D

    .line 92
    iput v6, v1, Ljava/awt/GridBagConstraints;->gridx:I

    const/16 v5, 0x11

    .line 93
    iput v5, v1, Ljava/awt/GridBagConstraints;->anchor:I

    .line 95
    iput v3, v1, Ljava/awt/GridBagConstraints;->gridy:I

    const/4 v5, 0x6

    new-array v5, v5, [Lorg/apache/log4j/Level;

    .line 96
    sget-object v7, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    aput-object v7, v5, v3

    sget-object v7, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    aput-object v7, v5, v6

    sget-object v7, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    const/4 v8, 0x2

    aput-object v7, v5, v8

    sget-object v7, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    const/4 v9, 0x3

    aput-object v7, v5, v9

    sget-object v7, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    const/4 v9, 0x4

    aput-object v7, v5, v9

    sget-object v7, Lorg/apache/log4j/Level;->TRACE:Lorg/apache/log4j/Level;

    aput-object v7, v5, v2

    .line 103
    new-instance v2, Ljavax/swing/JComboBox;

    invoke-direct {v2, v5}, Ljavax/swing/JComboBox;-><init>([Ljava/lang/Object;)V

    .line 104
    array-length v7, v5

    sub-int/2addr v7, v6

    aget-object v5, v5, v7

    .line 105
    invoke-virtual {v2, v5}, Ljavax/swing/JComboBox;->setSelectedItem(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {p1, v5}, Lorg/apache/log4j/chainsaw/MyTableModel;->setPriorityFilter(Lorg/apache/log4j/Priority;)V

    .line 107
    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 108
    invoke-virtual {p0, v2}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 109
    invoke-virtual {v2, v3}, Ljavax/swing/JComboBox;->setEditable(Z)V

    .line 110
    new-instance v5, Lorg/apache/log4j/chainsaw/ControlPanel$1;

    invoke-direct {v5, p0, p1, v2}, Lorg/apache/log4j/chainsaw/ControlPanel$1;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JComboBox;)V

    invoke-virtual {v2, v5}, Ljavax/swing/JComboBox;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 118
    iput v8, v1, Ljava/awt/GridBagConstraints;->fill:I

    .line 119
    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v2, v6

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 120
    new-instance v2, Ljavax/swing/JTextField;

    const-string v5, ""

    invoke-direct {v2, v5}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v2}, Ljavax/swing/JTextField;->getDocument()Ljavax/swing/text/Document;

    move-result-object v7

    new-instance v9, Lorg/apache/log4j/chainsaw/ControlPanel$2;

    invoke-direct {v9, p0, p1, v2}, Lorg/apache/log4j/chainsaw/ControlPanel$2;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface {v7, v9}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 132
    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 133
    invoke-virtual {p0, v2}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 135
    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v2, v6

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 136
    new-instance v2, Ljavax/swing/JTextField;

    invoke-direct {v2, v5}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v2}, Ljavax/swing/JTextField;->getDocument()Ljavax/swing/text/Document;

    move-result-object v7

    new-instance v9, Lorg/apache/log4j/chainsaw/ControlPanel$3;

    invoke-direct {v9, p0, p1, v2}, Lorg/apache/log4j/chainsaw/ControlPanel$3;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface {v7, v9}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 148
    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 149
    invoke-virtual {p0, v2}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 151
    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v2, v6

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 152
    new-instance v2, Ljavax/swing/JTextField;

    invoke-direct {v2, v5}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v2}, Ljavax/swing/JTextField;->getDocument()Ljavax/swing/text/Document;

    move-result-object v7

    new-instance v9, Lorg/apache/log4j/chainsaw/ControlPanel$4;

    invoke-direct {v9, p0, p1, v2}, Lorg/apache/log4j/chainsaw/ControlPanel$4;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface {v7, v9}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 164
    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 165
    invoke-virtual {p0, v2}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 167
    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v2, v6

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 168
    new-instance v2, Ljavax/swing/JTextField;

    invoke-direct {v2, v5}, Ljavax/swing/JTextField;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2}, Ljavax/swing/JTextField;->getDocument()Ljavax/swing/text/Document;

    move-result-object v5

    new-instance v7, Lorg/apache/log4j/chainsaw/ControlPanel$5;

    invoke-direct {v7, p0, p1, v2}, Lorg/apache/log4j/chainsaw/ControlPanel$5;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JTextField;)V

    invoke-interface {v5, v7}, Ljavax/swing/text/Document;->addDocumentListener(Ljavax/swing/event/DocumentListener;)V

    .line 182
    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 183
    invoke-virtual {p0, v2}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    const-wide/16 v9, 0x0

    .line 186
    iput-wide v9, v1, Ljava/awt/GridBagConstraints;->weightx:D

    .line 187
    iput v8, v1, Ljava/awt/GridBagConstraints;->fill:I

    .line 188
    iput v4, v1, Ljava/awt/GridBagConstraints;->anchor:I

    .line 189
    iput v8, v1, Ljava/awt/GridBagConstraints;->gridx:I

    .line 191
    iput v3, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 192
    new-instance v2, Ljavax/swing/JButton;

    const-string v3, "Exit"

    invoke-direct {v2, v3}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x78

    .line 193
    invoke-virtual {v2, v3}, Ljavax/swing/JButton;->setMnemonic(C)V

    .line 194
    sget-object v3, Lorg/apache/log4j/chainsaw/ExitAction;->INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

    invoke-virtual {v2, v3}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 195
    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 196
    invoke-virtual {p0, v2}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 198
    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v2, v6

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 199
    new-instance v2, Ljavax/swing/JButton;

    const-string v3, "Clear"

    invoke-direct {v2, v3}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x63

    .line 200
    invoke-virtual {v2, v3}, Ljavax/swing/JButton;->setMnemonic(C)V

    .line 201
    new-instance v3, Lorg/apache/log4j/chainsaw/ControlPanel$6;

    invoke-direct {v3, p0, p1}, Lorg/apache/log4j/chainsaw/ControlPanel$6;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;)V

    invoke-virtual {v2, v3}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 206
    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 207
    invoke-virtual {p0, v2}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 209
    iget v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    add-int/2addr v2, v6

    iput v2, v1, Ljava/awt/GridBagConstraints;->gridy:I

    .line 210
    new-instance v2, Ljavax/swing/JButton;

    const-string v3, "Pause"

    invoke-direct {v2, v3}, Ljavax/swing/JButton;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x70

    .line 211
    invoke-virtual {v2, v3}, Ljavax/swing/JButton;->setMnemonic(C)V

    .line 212
    new-instance v3, Lorg/apache/log4j/chainsaw/ControlPanel$7;

    invoke-direct {v3, p0, p1, v2}, Lorg/apache/log4j/chainsaw/ControlPanel$7;-><init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JButton;)V

    invoke-virtual {v2, v3}, Ljavax/swing/JButton;->addActionListener(Ljava/awt/event/ActionListener;)V

    .line 219
    invoke-virtual {v0, v2, v1}, Ljava/awt/GridBagLayout;->setConstraints(Ljava/awt/Component;Ljava/awt/GridBagConstraints;)V

    .line 220
    invoke-virtual {p0, v2}, Lorg/apache/log4j/chainsaw/ControlPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

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
