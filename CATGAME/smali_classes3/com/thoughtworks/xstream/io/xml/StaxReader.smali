.class public Lcom/thoughtworks/xstream/io/xml/StaxReader;
.super Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;
.source "StaxReader.java"


# instance fields
.field private final in:Ljavax/xml/stream/XMLStreamReader;

.field private final qnameMap:Lcom/thoughtworks/xstream/io/xml/QNameMap;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 1

    .line 35
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/xml/StaxReader;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamReader;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamReader;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    .line 42
    invoke-direct {p0, p3}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 43
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/StaxReader;->qnameMap:Lcom/thoughtworks/xstream/io/xml/QNameMap;

    .line 44
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/StaxReader;->in:Ljavax/xml/stream/XMLStreamReader;

    .line 45
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/StaxReader;->moveDown()V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamReader;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/xml/StaxReader;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamReader;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method


# virtual methods
.method public appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxReader;->in:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/Location;->getLineNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "line number"

    invoke-interface {p1, v1, v0}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxReader;->in:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->close()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAttribute(I)Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxReader;->in:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxReader;->in:Ljavax/xml/stream/XMLStreamReader;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxReader;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAttributeCount()I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxReader;->in:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxReader;->in:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxReader;->decodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected pullElementName()Ljava/lang/String;
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxReader;->in:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/StaxReader;->qnameMap:Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/io/xml/QNameMap;->getJavaClassName(Ljavax/xml/namespace/QName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected pullNextEvent()I
    .locals 5

    .line 58
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxReader;->in:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v0
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    return v0

    :cond_0
    return v3

    :cond_1
    const/4 v0, 0x3

    return v0

    :cond_2
    return v2

    :cond_3
    return v1

    :catch_0
    move-exception v0

    .line 73
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected pullText()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/StaxReader;->in:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
