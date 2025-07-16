.class Lcom/koushikdutta/async/parser/StringParser$1;
.super Lcom/koushikdutta/async/future/TransformFuture;
.source "StringParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/parser/StringParser;->parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/TransformFuture<",
        "Ljava/lang/String;",
        "Lcom/koushikdutta/async/ByteBufferList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/parser/StringParser;

.field final synthetic val$charset:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/parser/StringParser;Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/koushikdutta/async/parser/StringParser$1;->this$0:Lcom/koushikdutta/async/parser/StringParser;

    iput-object p2, p0, Lcom/koushikdutta/async/parser/StringParser$1;->val$charset:Ljava/lang/String;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/TransformFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected transform(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/koushikdutta/async/parser/StringParser$1;->this$0:Lcom/koushikdutta/async/parser/StringParser;

    iget-object v0, v0, Lcom/koushikdutta/async/parser/StringParser;->forcedCharset:Ljava/nio/charset/Charset;

    if-nez v0, :cond_0

    .line 34
    iget-object v1, p0, Lcom/koushikdutta/async/parser/StringParser$1;->val$charset:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 35
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 36
    :cond_0
    invoke-virtual {p1, v0}, Lcom/koushikdutta/async/ByteBufferList;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/parser/StringParser$1;->setComplete(Ljava/lang/Object;)Z

    return-void
.end method

.method protected bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    check-cast p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/parser/StringParser$1;->transform(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method
