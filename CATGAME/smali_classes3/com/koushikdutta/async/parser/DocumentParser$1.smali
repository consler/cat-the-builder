.class Lcom/koushikdutta/async/parser/DocumentParser$1;
.super Lcom/koushikdutta/async/future/TransformFuture;
.source "DocumentParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/koushikdutta/async/parser/DocumentParser;->parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/koushikdutta/async/future/TransformFuture<",
        "Lorg/w3c/dom/Document;",
        "Lcom/koushikdutta/async/ByteBufferList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/koushikdutta/async/parser/DocumentParser;


# direct methods
.method constructor <init>(Lcom/koushikdutta/async/parser/DocumentParser;)V
    .locals 0
    .param p1, "this$0"    # Lcom/koushikdutta/async/parser/DocumentParser;

    .line 26
    iput-object p1, p0, Lcom/koushikdutta/async/parser/DocumentParser$1;->this$0:Lcom/koushikdutta/async/parser/DocumentParser;

    invoke-direct {p0}, Lcom/koushikdutta/async/future/TransformFuture;-><init>()V

    return-void
.end method


# virtual methods
.method protected transform(Lcom/koushikdutta/async/ByteBufferList;)V
    .locals 3
    .param p1, "result"    # Lcom/koushikdutta/async/ByteBufferList;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 29
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 30
    .local v0, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 31
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;

    invoke-direct {v2, p1}, Lcom/koushikdutta/async/stream/ByteBufferListInputStream;-><init>(Lcom/koushikdutta/async/ByteBufferList;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/koushikdutta/async/parser/DocumentParser$1;->setComplete(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method

.method protected bridge synthetic transform(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 26
    check-cast p1, Lcom/koushikdutta/async/ByteBufferList;

    invoke-virtual {p0, p1}, Lcom/koushikdutta/async/parser/DocumentParser$1;->transform(Lcom/koushikdutta/async/ByteBufferList;)V

    return-void
.end method
