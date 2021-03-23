.class final Ldemo/Pinyin4jAppletDemo$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Ldemo/Pinyin4jAppletDemo;


# direct methods
.method constructor <init>(Ldemo/Pinyin4jAppletDemo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldemo/Pinyin4jAppletDemo$3;->this$0:Ldemo/Pinyin4jAppletDemo;

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 2

    iget-object p1, p0, Ldemo/Pinyin4jAppletDemo$3;->this$0:Ldemo/Pinyin4jAppletDemo;

    iget-object p1, p1, Ldemo/Pinyin4jAppletDemo;->toneTypes:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object p1, p1, v0

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo$3;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {v1}, Ldemo/Pinyin4jAppletDemo;->access$100(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JComboBox;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Ldemo/Pinyin4jAppletDemo$3;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {p1}, Ldemo/Pinyin4jAppletDemo;->access$200(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JComboBox;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljavax/swing/JComboBox;->setSelectedIndex(I)V

    iget-object p1, p0, Ldemo/Pinyin4jAppletDemo$3;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {p1}, Ldemo/Pinyin4jAppletDemo;->access$200(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JComboBox;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Ldemo/Pinyin4jAppletDemo$3;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {p1}, Ldemo/Pinyin4jAppletDemo;->access$200(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JComboBox;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Ljavax/swing/JComboBox;->setEnabled(Z)V

    return-void
.end method
