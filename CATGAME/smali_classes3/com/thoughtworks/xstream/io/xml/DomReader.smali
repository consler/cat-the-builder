.class public Lcom/thoughtworks/xstream/io/xml/DomReader;
.super Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;
.source "DomReader.java"


# instance fields
.field private childElements:Ljava/util/List;

.field private currentElement:Lorg/w3c/dom/Element;

.field private textBuffer:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1
    .param p1, "document"    # Lorg/w3c/dom/Document;

    .line 37
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomReader;-><init>(Lorg/w3c/dom/Element;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 52
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/thoughtworks/xstream/io/xml/DomReader;-><init>(Lorg/w3c/dom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1
    .param p1, "document"    # Lorg/w3c/dom/Document;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .line 68
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/thoughtworks/xstream/io/xml/DomReader;-><init>(Lorg/w3c/dom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "rootElement"    # Lorg/w3c/dom/Element;

    .line 33
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/DomReader;-><init>(Lorg/w3c/dom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "rootElement"    # Lorg/w3c/dom/Element;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->textBuffer:Ljava/lang/StringBuffer;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "rootElement"    # Lorg/w3c/dom/Element;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/DomReader;-><init>(Lorg/w3c/dom/Element;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 61
    return-void
.end method


# virtual methods
.method public getAttribute(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 95
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->currentElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 90
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->currentElement:Lorg/w3c/dom/Element;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/DomReader;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 91
    .local v0, "attribute":Lorg/w3c/dom/Attr;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getAttributeCount()I
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->currentElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 103
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->currentElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    invoke-interface {v0}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomReader;->decodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChild(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 111
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->childElements:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getChildCount()I
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->childElements:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->currentElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomReader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParent()Ljava/lang/Object;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->currentElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 7

    .line 76
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->currentElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 77
    .local v0, "childNodes":Lorg/w3c/dom/NodeList;
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->textBuffer:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 78
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 79
    .local v1, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 80
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 81
    .local v3, "childNode":Lorg/w3c/dom/Node;
    instance-of v4, v3, Lorg/w3c/dom/Text;

    if-eqz v4, :cond_0

    .line 82
    move-object v4, v3

    check-cast v4, Lorg/w3c/dom/Text;

    .line 83
    .local v4, "text":Lorg/w3c/dom/Text;
    iget-object v5, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->textBuffer:Ljava/lang/StringBuffer;

    invoke-interface {v4}, Lorg/w3c/dom/Text;->getData()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    .end local v3    # "childNode":Lorg/w3c/dom/Node;
    .end local v4    # "text":Lorg/w3c/dom/Text;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 86
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->textBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public peekNextChild()Ljava/lang/String;
    .locals 4

    .line 131
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->currentElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 132
    .local v0, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 133
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 134
    .local v2, "node":Lorg/w3c/dom/Node;
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_0

    .line 135
    move-object v3, v2

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/thoughtworks/xstream/io/xml/DomReader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 132
    .end local v2    # "node":Lorg/w3c/dom/Node;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method protected reassignCurrentElement(Ljava/lang/Object;)V
    .locals 4
    .param p1, "current"    # Ljava/lang/Object;

    .line 119
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Element;

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->currentElement:Lorg/w3c/dom/Element;

    .line 120
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 121
    .local v0, "childNodes":Lorg/w3c/dom/NodeList;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->childElements:Ljava/util/List;

    .line 122
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 123
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 124
    .local v2, "node":Lorg/w3c/dom/Node;
    instance-of v3, v2, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/DomReader;->childElements:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    .end local v2    # "node":Lorg/w3c/dom/Node;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
