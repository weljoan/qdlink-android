.class Lorg/apache/log4j/chainsaw/ControlPanel$7;
.super Ljava/lang/Object;
.source "ControlPanel.java"

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/chainsaw/ControlPanel;

.field private final synthetic val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

.field private final synthetic val$toggleButton:Ljavax/swing/JButton;


# direct methods
.method constructor <init>(Lorg/apache/log4j/chainsaw/ControlPanel;Lorg/apache/log4j/chainsaw/MyTableModel;Ljavax/swing/JButton;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$7;->this$0:Lorg/apache/log4j/chainsaw/ControlPanel;

    iput-object p2, p0, Lorg/apache/log4j/chainsaw/ControlPanel$7;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    iput-object p3, p0, Lorg/apache/log4j/chainsaw/ControlPanel$7;->val$toggleButton:Ljavax/swing/JButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 214
    iget-object p1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$7;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-virtual {p1}, Lorg/apache/log4j/chainsaw/MyTableModel;->toggle()V

    .line 215
    iget-object p1, p0, Lorg/apache/log4j/chainsaw/ControlPanel$7;->val$toggleButton:Ljavax/swing/JButton;

    iget-object v0, p0, Lorg/apache/log4j/chainsaw/ControlPanel$7;->val$aModel:Lorg/apache/log4j/chainsaw/MyTableModel;

    invoke-virtual {v0}, Lorg/apache/log4j/chainsaw/MyTableModel;->isPaused()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Resume"

    goto :goto_0

    :cond_0
    const-string v0, "Pause"

    :goto_0
    invoke-virtual {p1, v0}, Ljavax/swing/JButton;->setText(Ljava/lang/String;)V

    return-void
.end method
