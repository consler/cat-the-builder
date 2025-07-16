.class public Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;
.source "Dom4JXmlWriter.java"


# instance fields
.field private attributes:Lorg/xml/sax/helpers/AttributesImpl;

.field private children:Z

.field private final elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

.field private started:Z

.field private final writer:Lorg/dom4j/io/XMLWriter;


# direct methods
.method public constructor <init>(Lorg/dom4j/io/XMLWriter;)V
    .locals 1

    .line 36
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;-><init>(Lorg/dom4j/io/XMLWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/io/XMLWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    .line 43
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 44
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->writer:Lorg/dom4j/io/XMLWriter;

    .line 45
    new-instance p2, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 46
    new-instance p2, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {p2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    .line 48
    :try_start_0
    invoke-virtual {p1}, Lorg/dom4j/io/XMLWriter;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 50
    new-instance p2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {p2, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public constructor <init>(Lorg/dom4j/io/XMLWriter;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;-><init>(Lorg/dom4j/io/XMLWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method private startElement()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 134
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->started:Z

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->writer:Lorg/dom4j/io/XMLWriter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    const-string v3, ""

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/dom4j/io/XMLWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 136
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    const/4 v0, 0x1

    .line 137
    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->started:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 89
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "string"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 2

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->writer:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0}, Lorg/dom4j/io/XMLWriter;->endDocument()V

    .line 125
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->writer:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0}, Lorg/dom4j/io/XMLWriter;->flush()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 129
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 127
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public endNode()V
    .locals 4

    const-string v0, ""

    .line 94
    :try_start_0
    iget-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->children:Z

    if-nez v1, :cond_1

    .line 95
    new-instance v0, Lorg/dom4j/tree/DefaultElement;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/dom4j/tree/DefaultElement;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 96
    :goto_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v2}, Lorg/xml/sax/helpers/AttributesImpl;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v2, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v3, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->writer:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v1, v0}, Lorg/dom4j/io/XMLWriter;->write(Lorg/dom4j/Element;)V

    .line 100
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->attributes:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->children:Z

    .line 102
    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->started:Z

    goto :goto_1

    .line 104
    :cond_1
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->startElement()V

    .line 105
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->writer:Lorg/dom4j/io/XMLWriter;

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v0, v0, v2}, Lorg/dom4j/io/XMLWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    .line 110
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 108
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flush()V
    .locals 2

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->writer:Lorg/dom4j/io/XMLWriter;

    invoke-virtual {v0}, Lorg/dom4j/io/XMLWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 118
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 77
    array-length v0, p1

    if-lez v0, :cond_0

    .line 79
    :try_start_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->startElement()V

    .line 80
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->writer:Lorg/dom4j/io/XMLWriter;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lorg/dom4j/io/XMLWriter;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    .line 84
    iput-boolean p1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->children:Z

    goto :goto_0

    :catch_0
    move-exception p1

    .line 82
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 65
    :try_start_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->startElement()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    iput-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->started:Z

    goto :goto_0

    :catch_0
    move-exception p1

    .line 67
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 71
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iput-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JXmlWriter;->children:Z

    return-void
.end method
