.class public Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;
.super Ljavax/swing/tree/DefaultTreeCellRenderer;
.source "CategoryNodeRenderer.java"


# static fields
.field public static final FATAL_CHILDREN:Ljava/awt/Color;

.field protected static _sat:Ljavax/swing/ImageIcon; = null

.field private static final serialVersionUID:J = -0x53ea340b672cefe8L


# instance fields
.field protected _checkBox:Ljavax/swing/JCheckBox;

.field protected _panel:Ljavax/swing/JPanel;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 40
    new-instance v0, Ljava/awt/Color;

    const/16 v1, 0xbd

    const/16 v2, 0x71

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljava/awt/Color;-><init>(III)V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->FATAL_CHILDREN:Ljava/awt/Color;

    const/4 v0, 0x0

    .line 47
    sput-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 57
    invoke-direct {p0}, Ljavax/swing/tree/DefaultTreeCellRenderer;-><init>()V

    .line 45
    new-instance v0, Ljavax/swing/JCheckBox;

    invoke-direct {v0}, Ljavax/swing/JCheckBox;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    .line 46
    new-instance v0, Ljavax/swing/JPanel;

    invoke-direct {v0}, Ljavax/swing/JPanel;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    .line 58
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    const-string v1, "Tree.textBackground"

    invoke-static {v1}, Ljavax/swing/UIManager;->getColor(Ljava/lang/Object;)Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->setBackground(Ljava/awt/Color;)V

    .line 60
    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    if-nez v0, :cond_0

    .line 64
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "/org/apache/log4j/lf5/viewer/images/channelexplorer_satellite.gif"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 66
    new-instance v1, Ljavax/swing/ImageIcon;

    invoke-direct {v1, v0}, Ljavax/swing/ImageIcon;-><init>(Ljava/net/URL;)V

    sput-object v1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    :cond_0
    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setOpaque(Z)V

    .line 70
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    invoke-virtual {v1, v0}, Ljavax/swing/JCheckBox;->setOpaque(Z)V

    .line 71
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    invoke-virtual {v1, v0}, Ljavax/swing/JPanel;->setOpaque(Z)V

    .line 75
    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    new-instance v2, Ljava/awt/FlowLayout;

    invoke-direct {v2, v0, v0, v0}, Ljava/awt/FlowLayout;-><init>(III)V

    invoke-virtual {v1, v2}, Ljavax/swing/JPanel;->setLayout(Ljava/awt/LayoutManager;)V

    .line 76
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    iget-object v1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    invoke-virtual {v0, v1}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 77
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    invoke-virtual {v0, p0}, Ljavax/swing/JPanel;->add(Ljava/awt/Component;)Ljava/awt/Component;

    .line 79
    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setOpenIcon(Ljavax/swing/Icon;)V

    .line 80
    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setClosedIcon(Ljavax/swing/Icon;)V

    .line 81
    sget-object v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_sat:Ljavax/swing/ImageIcon;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setLeafIcon(Ljavax/swing/Icon;)V

    return-void
.end method


# virtual methods
.method protected buildToolTip(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljava/lang/String;
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 131
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " contains a total of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->getTotalNumberOfRecords()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p1, " LogRecords."

    .line 133
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, " Right-click for more info."

    .line 134
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCheckBoxOffset()Ljava/awt/Dimension;
    .locals 2

    .line 122
    new-instance v0, Ljava/awt/Dimension;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ljava/awt/Dimension;-><init>(II)V

    return-object v0
.end method

.method public getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;
    .locals 1

    .line 93
    move-object v0, p2

    check-cast v0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;

    .line 98
    invoke-super/range {p0 .. p7}, Ljavax/swing/tree/DefaultTreeCellRenderer;->getTreeCellRendererComponent(Ljavax/swing/JTree;Ljava/lang/Object;ZZZIZ)Ljava/awt/Component;

    if-nez p6, :cond_0

    .line 104
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljavax/swing/JCheckBox;->setVisible(Z)V

    goto :goto_0

    .line 106
    :cond_0
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljavax/swing/JCheckBox;->setVisible(Z)V

    .line 107
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_checkBox:Ljavax/swing/JCheckBox;

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->isSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljavax/swing/JCheckBox;->setSelected(Z)V

    .line 109
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->buildToolTip(Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;)Ljava/lang/String;

    move-result-object p1

    .line 110
    iget-object p2, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    invoke-virtual {p2, p1}, Ljavax/swing/JPanel;->setToolTipText(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->hasFatalChildren()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    sget-object p1, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->FATAL_CHILDREN:Ljava/awt/Color;

    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setForeground(Ljava/awt/Color;)V

    .line 114
    :cond_1
    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNode;->hasFatalRecords()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 115
    sget-object p1, Ljava/awt/Color;->red:Ljava/awt/Color;

    invoke-virtual {p0, p1}, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->setForeground(Ljava/awt/Color;)V

    .line 118
    :cond_2
    iget-object p1, p0, Lorg/apache/log4j/lf5/viewer/categoryexplorer/CategoryNodeRenderer;->_panel:Ljavax/swing/JPanel;

    return-object p1
.end method
