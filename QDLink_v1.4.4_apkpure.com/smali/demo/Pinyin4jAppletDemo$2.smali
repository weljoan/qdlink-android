.class final Ldemo/Pinyin4jAppletDemo$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/awt/event/ActionListener;


# instance fields
.field private final synthetic this$0:Ldemo/Pinyin4jAppletDemo;


# direct methods
.method constructor <init>(Ldemo/Pinyin4jAppletDemo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    return-void
.end method

.method private concatPinyinStringArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "line.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private updateFormattedTextField(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    new-instance v0, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;

    invoke-direct {v0}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;-><init>()V

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    iget-object v1, v1, Ldemo/Pinyin4jAppletDemo;->toneTypes:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, p2, :cond_0

    sget-object p2, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITH_TONE_NUMBER:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    :goto_0
    invoke-virtual {v0, p2}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setToneType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    iget-object v1, v1, Ldemo/Pinyin4jAppletDemo;->toneTypes:[Ljava/lang/String;

    aget-object v1, v1, v4

    if-ne v1, p2, :cond_1

    sget-object p2, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITHOUT_TONE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    iget-object v1, v1, Ldemo/Pinyin4jAppletDemo;->toneTypes:[Ljava/lang/String;

    aget-object v1, v1, v3

    if-ne v1, p2, :cond_2

    sget-object p2, Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;->WITH_TONE_MARK:Lnet/sourceforge/pinyin4j/format/HanyuPinyinToneType;

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p2, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    iget-object p2, p2, Ldemo/Pinyin4jAppletDemo;->vCharTypes:[Ljava/lang/String;

    aget-object p2, p2, v2

    if-ne p2, p3, :cond_3

    sget-object p2, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_U_AND_COLON:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    :goto_2
    invoke-virtual {v0, p2}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setVCharType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;)V

    goto :goto_3

    :cond_3
    iget-object p2, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    iget-object p2, p2, Ldemo/Pinyin4jAppletDemo;->vCharTypes:[Ljava/lang/String;

    aget-object p2, p2, v4

    if-ne p2, p3, :cond_4

    sget-object p2, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_V:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    goto :goto_2

    :cond_4
    iget-object p2, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    iget-object p2, p2, Ldemo/Pinyin4jAppletDemo;->vCharTypes:[Ljava/lang/String;

    aget-object p2, p2, v3

    if-ne p2, p3, :cond_5

    sget-object p2, Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;->WITH_U_UNICODE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinVCharType;

    goto :goto_2

    :cond_5
    :goto_3
    iget-object p2, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    iget-object p2, p2, Ldemo/Pinyin4jAppletDemo;->caseTypes:[Ljava/lang/String;

    aget-object p2, p2, v2

    if-ne p2, p4, :cond_6

    sget-object p2, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->LOWERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    :goto_4
    invoke-virtual {v0, p2}, Lnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;->setCaseType(Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;)V

    goto :goto_5

    :cond_6
    iget-object p2, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    iget-object p2, p2, Ldemo/Pinyin4jAppletDemo;->caseTypes:[Ljava/lang/String;

    aget-object p2, p2, v4

    if-ne p2, p4, :cond_7

    sget-object p2, Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;->UPPERCASE:Lnet/sourceforge/pinyin4j/format/HanyuPinyinCaseType;

    goto :goto_4

    :cond_7
    :goto_5
    const/4 p2, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(CLnet/sourceforge/pinyin4j/format/HanyuPinyinOutputFormat;)[Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lnet/sourceforge/pinyin4j/format/exception/BadHanyuPinyinOutputFormatCombination;->printStackTrace()V

    :goto_6
    invoke-direct {p0, p2}, Ldemo/Pinyin4jAppletDemo$2;->concatPinyinStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {p2}, Ldemo/Pinyin4jAppletDemo;->access$1000(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JTextArea;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    return-void
.end method

.method private updateUnformattedTextField(C)V
    .locals 2

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {v0}, Ldemo/Pinyin4jAppletDemo;->access$400(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JTextArea;

    move-result-object v0

    invoke-static {p1}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toHanyuPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ldemo/Pinyin4jAppletDemo$2;->concatPinyinStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {v0}, Ldemo/Pinyin4jAppletDemo;->access$500(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JTextArea;

    move-result-object v0

    invoke-static {p1}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toTongyongPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ldemo/Pinyin4jAppletDemo$2;->concatPinyinStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {v0}, Ldemo/Pinyin4jAppletDemo;->access$600(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JTextArea;

    move-result-object v0

    invoke-static {p1}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toWadeGilesPinyinStringArray(C)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ldemo/Pinyin4jAppletDemo$2;->concatPinyinStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {v0}, Ldemo/Pinyin4jAppletDemo;->access$700(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JTextArea;

    move-result-object v0

    invoke-static {p1}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toMPS2PinyinStringArray(C)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ldemo/Pinyin4jAppletDemo$2;->concatPinyinStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {v0}, Ldemo/Pinyin4jAppletDemo;->access$800(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JTextArea;

    move-result-object v0

    invoke-static {p1}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toYalePinyinStringArray(C)[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ldemo/Pinyin4jAppletDemo$2;->concatPinyinStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {v0}, Ldemo/Pinyin4jAppletDemo;->access$900(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JTextArea;

    move-result-object v0

    invoke-static {p1}, Lnet/sourceforge/pinyin4j/PinyinHelper;->toGwoyeuRomatzyhStringArray(C)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ldemo/Pinyin4jAppletDemo$2;->concatPinyinStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/swing/JTextArea;->setText(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 3

    iget-object p1, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {p1}, Ldemo/Pinyin4jAppletDemo;->access$000(Ldemo/Pinyin4jAppletDemo;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {p0, p1}, Ldemo/Pinyin4jAppletDemo$2;->updateUnformattedTextField(C)V

    iget-object v0, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {v0}, Ldemo/Pinyin4jAppletDemo;->access$100(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JComboBox;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {v1}, Ldemo/Pinyin4jAppletDemo;->access$200(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JComboBox;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Ldemo/Pinyin4jAppletDemo$2;->this$0:Ldemo/Pinyin4jAppletDemo;

    invoke-static {v2}, Ldemo/Pinyin4jAppletDemo;->access$300(Ldemo/Pinyin4jAppletDemo;)Ljavax/swing/JComboBox;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/swing/JComboBox;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Ldemo/Pinyin4jAppletDemo$2;->updateFormattedTextField(CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
