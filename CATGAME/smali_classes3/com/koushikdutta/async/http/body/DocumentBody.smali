.class public Lcom/koushikdutta/async/http/body/DocumentBody;
.super Ljava/lang/Object;
.source "DocumentBody.java"

# interfaces
.implements Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/koushikdutta/async/http/body/AsyncHttpRequestBody<",
        "Lorg/w3c/dom/Document;",
        ">;"
    }
.end annotation


# static fields
.field public static final CONTENT_TYPE:Ljava/lang/String; = "application/xml"


# instance fields
.field bout:Ljava/io/ByteArrayOutputStream;

.field document:Lorg/w3c/dom/Document;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/koushikdutta/async/http/body/DocumentBody;-><init>(Lorg/w3c/dom/Document;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 0
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/koushikdutta/async/http/body/DocumentBody;->document:Lorg/w3c/dom/Document;

    .line 32
    return-void
.end method

.method private prepare()V
    .locals 6

    .line 36
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/DocumentBody;->bout:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    .line 37
    return-void

    .line 40
    :cond_0
    :try_start_0
    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    iget-object v1, p0, Lcom/koushikdutta/async/http/body/DocumentBody;->document:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 41
    .local v0, "source":Ljavax/xml/transform/dom/DOMSource;
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 42
    .local v1, "tf":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v2

    .line 43
    .local v2, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v3, p0, Lcom/koushikdutta/async/http/body/DocumentBody;->bout:Ljava/io/ByteArrayOutputStream;

    .line 44
    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lcom/koushikdutta/async/http/body/DocumentBody;->bout:Ljava/io/ByteArrayOutputStream;

    sget-object v5, Lcom/koushikdutta/async/util/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 45
    .local v3, "writer":Ljava/io/OutputStreamWriter;
    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    .line 46
    .local v4, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v2, v0, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 47
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0    # "source":Ljavax/xml/transform/dom/DOMSource;
    .end local v1    # "tf":Ljavax/xml/transform/TransformerFactory;
    .end local v2    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v3    # "writer":Ljava/io/OutputStreamWriter;
    .end local v4    # "result":Ljavax/xml/transform/stream/StreamResult;
    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 51
    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/koushikdutta/async/http/body/DocumentBody;->get()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public get()Lorg/w3c/dom/Document;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/DocumentBody;->document:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 75
    const-string v0, "application/xml"

    return-object v0
.end method

.method public length()I
    .locals 1

    .line 85
    invoke-direct {p0}, Lcom/koushikdutta/async/http/body/DocumentBody;->prepare()V

    .line 86
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/DocumentBody;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public parse(Lcom/koushikdutta/async/DataEmitter;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 2
    .param p1, "emitter"    # Lcom/koushikdutta/async/DataEmitter;
    .param p2, "completed"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 62
    new-instance v0, Lcom/koushikdutta/async/parser/DocumentParser;

    invoke-direct {v0}, Lcom/koushikdutta/async/parser/DocumentParser;-><init>()V

    invoke-virtual {v0, p1}, Lcom/koushikdutta/async/parser/DocumentParser;->parse(Lcom/koushikdutta/async/DataEmitter;)Lcom/koushikdutta/async/future/Future;

    move-result-object v0

    new-instance v1, Lcom/koushikdutta/async/http/body/DocumentBody$1;

    invoke-direct {v1, p0, p2}, Lcom/koushikdutta/async/http/body/DocumentBody$1;-><init>(Lcom/koushikdutta/async/http/body/DocumentBody;Lcom/koushikdutta/async/callback/CompletedCallback;)V

    invoke-interface {v0, v1}, Lcom/koushikdutta/async/future/Future;->setCallback(Lcom/koushikdutta/async/future/FutureCallback;)Lcom/koushikdutta/async/future/Future;

    .line 69
    return-void
.end method

.method public readFullyOnRequest()Z
    .locals 1

    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public write(Lcom/koushikdutta/async/http/AsyncHttpRequest;Lcom/koushikdutta/async/DataSink;Lcom/koushikdutta/async/callback/CompletedCallback;)V
    .locals 1
    .param p1, "request"    # Lcom/koushikdutta/async/http/AsyncHttpRequest;
    .param p2, "sink"    # Lcom/koushikdutta/async/DataSink;
    .param p3, "completed"    # Lcom/koushikdutta/async/callback/CompletedCallback;

    .line 55
    invoke-direct {p0}, Lcom/koushikdutta/async/http/body/DocumentBody;->prepare()V

    .line 56
    iget-object v0, p0, Lcom/koushikdutta/async/http/body/DocumentBody;->bout:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 57
    .local v0, "bytes":[B
    invoke-static {p2, v0, p3}, Lcom/koushikdutta/async/Util;->writeAll(Lcom/koushikdutta/async/DataSink;[BLcom/koushikdutta/async/callback/CompletedCallback;)V

    .line 58
    return-void
.end method
