.class Lorg/apache/log4j/net/SMTPAppender$1;
.super Ljavax/mail/Authenticator;
.source "SMTPAppender.java"


# instance fields
.field private final synthetic this$0:Lorg/apache/log4j/net/SMTPAppender;


# direct methods
.method constructor <init>(Lorg/apache/log4j/net/SMTPAppender;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lorg/apache/log4j/net/SMTPAppender$1;->this$0:Lorg/apache/log4j/net/SMTPAppender;

    invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
    .locals 3

    .line 221
    new-instance v0, Ljavax/mail/PasswordAuthentication;

    iget-object v1, p0, Lorg/apache/log4j/net/SMTPAppender$1;->this$0:Lorg/apache/log4j/net/SMTPAppender;

    invoke-static {v1}, Lorg/apache/log4j/net/SMTPAppender;->access$000(Lorg/apache/log4j/net/SMTPAppender;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/log4j/net/SMTPAppender$1;->this$0:Lorg/apache/log4j/net/SMTPAppender;

    invoke-static {v2}, Lorg/apache/log4j/net/SMTPAppender;->access$100(Lorg/apache/log4j/net/SMTPAppender;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
