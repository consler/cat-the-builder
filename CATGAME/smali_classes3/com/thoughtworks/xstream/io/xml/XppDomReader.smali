.class public Lcom/thoughtworks/xstream/io/xml/XppDomReader;
.super Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;
.source "XppDomReader.java"


# instance fields
.field private currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;)V
    .locals 0
    .param p1, "xppDom"    # Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    .line 25
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "xppDom"    # Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractDocumentReader;-><init>(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "xppDom"    # Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/XppDomReader;-><init>(Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 41
    return-void
.end method


# virtual methods
.method public getAttribute(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 64
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttributeNames()[Ljava/lang/String;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeCount()I
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttributeNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 72
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getAttributeNames()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->decodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getChild(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 80
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v0, p1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChild(I)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v0

    return-object v0
.end method

.method protected getChildCount()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParent()Ljava/lang/Object;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getParent()Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 2

    .line 48
    const/4 v0, 0x0

    .line 51
    .local v0, "text":Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getValue()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 54
    goto :goto_0

    .line 52
    :catch_0
    move-exception v1

    .line 56
    :goto_0
    if-nez v0, :cond_0

    const-string v1, ""

    goto :goto_1

    :cond_0
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public peekNextChild()Ljava/lang/String;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getChild(I)Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->decodeNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected reassignCurrentElement(Ljava/lang/Object;)V
    .locals 1
    .param p1, "current"    # Ljava/lang/Object;

    .line 88
    move-object v0, p1

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppDomReader;->currentElement:Lcom/thoughtworks/xstream/io/xml/xppdom/XppDom;

    .line 89
    return-void
.end method
