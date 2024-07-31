.class public Lcom/thoughtworks/xstream/io/xml/Dom4JReader;
.super Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;
.source "Dom4JReader.java"


# instance fields
.field private currentElement:Lorg/dom4j/Element;


# direct methods
.method public constructor <init>(Lorg/dom4j/Branch;)V
    .locals 1
    .param p1, "branch"    # Lorg/dom4j/Branch;

    .line 30
    instance-of v0, p1, Lorg/dom4j/Element;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/dom4j/Element;

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/dom4j/Document;

    invoke-interface {v0}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Element;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Document;)V
    .locals 1
    .param p1, "document"    # Lorg/dom4j/Document;

    .line 38
    invoke-interface {p1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Element;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "document"    # Lorg/dom4j/Document;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 52
    invoke-interface {p1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Document;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1
    .param p1, "document"    # Lorg/dom4j/Document;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .line 68
    invoke-interface {p1}, Lorg/dom4j/Document;->getRootElement()Lorg/dom4j/Element;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;)V
    .locals 1
    .param p1, "rootElement"    # Lorg/dom4j/Element;

    .line 34
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "rootElement"    # Lorg/dom4j/Element;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/dom4j/Element;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "rootElement"    # Lorg/dom4j/Element;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;-><init>(Lorg/dom4j/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 61
    return-void
.end method


# virtual methods
.method public appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V
    .locals 2
    .param p1, "errorWriter"    # Lcom/thoughtworks/xstream/converters/ErrorWriter;

    .line 120
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;->currentElement:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xpath"

    invoke-interface {p1, v1, v0}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    return-void
.end method

.method public getAttribute(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 84
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;->currentElement:Lorg/dom4j/Element;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lorg/dom4j/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;->currentElement:Lorg/dom4j/Element;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/dom4j/Element;->attributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeCount()I
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;->currentElement:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->attributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 92
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;->currentElement:Lorg/dom4j/Element;

    invoke-interface {v0, p1}, Lorg/dom4j/Element;->attribute(I)Lorg/dom4j/Attribute;

    move-result-object v0

    invoke-interface {v0}, Lorg/dom4j/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;->decodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChild(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 100
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;->currentElement:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getChildCount()I
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;->currentElement:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;->currentElement:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParent()Ljava/lang/Object;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;->currentElement:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getParent()Lorg/dom4j/Element;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;->currentElement:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public peekNextChild()Ljava/lang/String;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;->currentElement:Lorg/dom4j/Element;

    invoke-interface {v0}, Lorg/dom4j/Element;->elements()Ljava/util/List;

    move-result-object v0

    .line 113
    .local v0, "list":Ljava/util/List;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/dom4j/Element;

    invoke-interface {v1}, Lorg/dom4j/Element;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 114
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected reassignCurrentElement(Ljava/lang/Object;)V
    .locals 1
    .param p1, "current"    # Ljava/lang/Object;

    .line 108
    move-object v0, p1

    check-cast v0, Lorg/dom4j/Element;

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/Dom4JReader;->currentElement:Lorg/dom4j/Element;

    .line 109
    return-void
.end method
