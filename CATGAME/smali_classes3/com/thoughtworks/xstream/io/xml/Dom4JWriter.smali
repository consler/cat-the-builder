.class public Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;
.super Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;
.source "Dom4JWriter.java"


# instance fields
.field private final documentFactory:Lorg/dom4j/DocumentFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 88
    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0, v1}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;-><init>(Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Branch;)V
    .locals 2

    .line 81
    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Branch;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    .line 45
    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Branch;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1

    .line 77
    new-instance v0, Lorg/dom4j/DocumentFactory;

    invoke-direct {v0}, Lorg/dom4j/DocumentFactory;-><init>()V

    invoke-direct {p0, p1, v0, p2}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Branch;Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p3}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentWriter;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 31
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;->documentFactory:Lorg/dom4j/DocumentFactory;

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Branch;Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;)V
    .locals 1

    .line 69
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;-><init>(Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, v0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;-><init>(Lorg/dom4j/Branch;Lorg/dom4j/DocumentFactory;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method private top()Lorg/dom4j/Branch;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Branch;

    return-object v0
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;->top()Lorg/dom4j/Branch;

    move-result-object v0

    check-cast v0, Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lorg/dom4j/Element;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lorg/dom4j/Element;

    return-void
.end method

.method protected createNode(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;->documentFactory:Lorg/dom4j/DocumentFactory;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;->encodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/dom4j/DocumentFactory;->createElement(Ljava/lang/String;)Lorg/dom4j/Element;

    move-result-object p1

    .line 93
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;->top()Lorg/dom4j/Branch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;->top()Lorg/dom4j/Branch;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/dom4j/Branch;->add(Lorg/dom4j/Element;)V

    :cond_0
    return-object p1
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/Dom4JWriter;->top()Lorg/dom4j/Branch;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/dom4j/Branch;->setText(Ljava/lang/String;)V

    return-void
.end method
