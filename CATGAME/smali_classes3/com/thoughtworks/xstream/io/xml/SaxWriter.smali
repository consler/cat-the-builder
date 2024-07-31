.class public final Lcom/thoughtworks/xstream/io/xml/SaxWriter;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;
.source "SaxWriter.java"

# interfaces
.implements Lorg/xml/sax/XMLReader;


# static fields
.field public static final CONFIGURED_XSTREAM_PROPERTY:Ljava/lang/String; = "http://com.thoughtworks.xstream/sax/property/configured-xstream"

.field public static final SOURCE_OBJECT_LIST_PROPERTY:Ljava/lang/String; = "http://com.thoughtworks.xstream/sax/property/source-object-list"


# instance fields
.field private final attributeList:Lorg/xml/sax/helpers/AttributesImpl;

.field private buffer:[C

.field private contentHandler:Lorg/xml/sax/ContentHandler;

.field private depth:I

.field private dtdHandler:Lorg/xml/sax/DTDHandler;

.field private elementStack:Ljava/util/List;

.field private entityResolver:Lorg/xml/sax/EntityResolver;

.field private errorHandler:Lorg/xml/sax/ErrorHandler;

.field private features:Ljava/util/Map;

.field private final includeEnclosingDocument:Z

.field private final properties:Ljava/util/Map;

.field private startTagInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 162
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>(Z)V

    .line 163
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 129
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>(ZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1
    .param p1, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .line 146
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>(ZLcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    .line 147
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "includeEnclosingDocument"    # Z

    .line 158
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>(ZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 159
    return-void
.end method

.method public constructor <init>(ZLcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 2
    .param p1, "includeEnclosingDocument"    # Z
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 137
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 90
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 95
    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 100
    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 105
    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 115
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->features:Ljava/util/Map;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->properties:Ljava/util/Map;

    .line 601
    const/4 v0, 0x0

    iput v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    .line 602
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->elementStack:Ljava/util/List;

    .line 603
    const/16 v1, 0x80

    new-array v1, v1, [C

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->buffer:[C

    .line 604
    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startTagInProgress:Z

    .line 605
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->attributeList:Lorg/xml/sax/helpers/AttributesImpl;

    .line 138
    iput-boolean p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->includeEnclosingDocument:Z

    .line 139
    return-void
.end method

.method public constructor <init>(ZLcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "includeEnclosingDocument"    # Z
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>(ZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 155
    return-void
.end method

.method private endDocument(Z)V
    .locals 2
    .param p1, "multiObjectMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 697
    iget v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 698
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 699
    const/4 v0, 0x0

    iput v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    .line 701
    :cond_1
    return-void
.end method

.method private flushStartTag()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 710
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startTagInProgress:Z

    if-eqz v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->elementStack:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    .line 713
    .local v0, "tagName":Ljava/lang/String;
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->attributeList:Lorg/xml/sax/helpers/AttributesImpl;

    const-string v4, ""

    invoke-interface {v2, v4, v0, v0, v3}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 715
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->attributeList:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v2}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 716
    iput-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startTagInProgress:Z

    .line 718
    .end local v0    # "tagName":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private parse()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->properties:Ljava/util/Map;

    const-string v1, "http://com.thoughtworks.xstream/sax/property/configured-xstream"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/XStream;

    check-cast v0, Lcom/thoughtworks/xstream/XStream;

    .line 571
    .local v0, "xstream":Lcom/thoughtworks/xstream/XStream;
    if-nez v0, :cond_0

    .line 572
    new-instance v1, Lcom/thoughtworks/xstream/XStream;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/XStream;-><init>()V

    move-object v0, v1

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->properties:Ljava/util/Map;

    const-string v2, "http://com.thoughtworks.xstream/sax/property/source-object-list"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    check-cast v1, Ljava/util/List;

    .line 576
    .local v1, "source":Ljava/util/List;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 582
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startDocument(Z)V

    .line 583
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 584
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Lcom/thoughtworks/xstream/XStream;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    goto :goto_0

    .line 586
    .end local v3    # "i":Ljava/util/Iterator;
    :cond_1
    invoke-direct {p0, v2}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->endDocument(Z)V
    :try_end_0
    .catch Lcom/thoughtworks/xstream/io/StreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    nop

    .line 594
    return-void

    .line 587
    :catch_0
    move-exception v2

    .line 588
    .local v2, "e":Lcom/thoughtworks/xstream/io/StreamException;
    invoke-virtual {v2}, Lcom/thoughtworks/xstream/io/StreamException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Lorg/xml/sax/SAXException;

    if-eqz v3, :cond_2

    .line 589
    invoke-virtual {v2}, Lcom/thoughtworks/xstream/io/StreamException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Lorg/xml/sax/SAXException;

    check-cast v3, Lorg/xml/sax/SAXException;

    throw v3

    .line 591
    :cond_2
    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3

    .line 577
    .end local v2    # "e":Lcom/thoughtworks/xstream/io/StreamException;
    :cond_3
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Missing or empty source object list. Setting property \"http://com.thoughtworks.xstream/sax/property/source-object-list\" is mandatory"

    invoke-direct {v2, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private startDocument(Z)V
    .locals 1
    .param p1, "multiObjectMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 675
    iget v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    if-nez v0, :cond_0

    .line 677
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 679
    if-eqz p1, :cond_0

    .line 682
    iget v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    .line 685
    :cond_0
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 624
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startTagInProgress:Z

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->escapeXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "escapedName":Ljava/lang/String;
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->attributeList:Lorg/xml/sax/helpers/AttributesImpl;

    const-string v2, ""

    const-string v5, "CDATA"

    move-object v3, v0

    move-object v4, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    .end local v0    # "escapedName":Ljava/lang/String;
    nop

    .line 630
    return-void

    .line 628
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No startElement being processed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public close()V
    .locals 0

    .line 726
    return-void
.end method

.method public endNode()V
    .locals 4

    .line 650
    :try_start_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->flushStartTag()V

    .line 652
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->elementStack:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    check-cast v0, Ljava/lang/String;

    .line 654
    .local v0, "tagName":Ljava/lang/String;
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    const-string v3, ""

    invoke-interface {v2, v3, v0, v0}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget v2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    .line 657
    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->includeEnclosingDocument:Z

    if-eqz v2, :cond_0

    .line 658
    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->endDocument(Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 662
    .end local v0    # "tagName":Ljava/lang/String;
    :cond_0
    nop

    .line 663
    return-void

    .line 660
    :catch_0
    move-exception v0

    .line 661
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flush()V
    .locals 0

    .line 722
    return-void
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .line 232
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 241
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->features:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    check-cast v0, Ljava/lang/Boolean;

    .line 236
    .local v0, "value":Ljava/lang/Boolean;
    if-nez v0, :cond_2

    .line 237
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 239
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .line 334
    const-string v0, "http://com.thoughtworks.xstream/sax/property/configured-xstream"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 335
    const-string v0, "http://com.thoughtworks.xstream/sax/property/source-object-list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->properties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 0
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 517
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->parse()V

    .line 518
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 0
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 559
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->parse()V

    .line 560
    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 2
    .param p1, "handler"    # Lorg/xml/sax/ContentHandler;

    .line 431
    if-eqz p1, :cond_0

    .line 434
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 435
    return-void

    .line 432
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 2
    .param p1, "handler"    # Lorg/xml/sax/DTDHandler;

    .line 396
    if-eqz p1, :cond_0

    .line 399
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 400
    return-void

    .line 397
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 2
    .param p1, "resolver"    # Lorg/xml/sax/EntityResolver;

    .line 362
    if-eqz p1, :cond_0

    .line 365
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 366
    return-void

    .line 363
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "resolver"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 2
    .param p1, "handler"    # Lorg/xml/sax/ErrorHandler;

    .line 468
    if-eqz p1, :cond_0

    .line 471
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 472
    return-void

    .line 469
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "handler"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    .line 195
    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 196
    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->features:Ljava/util/Map;

    if-eqz p2, :cond_2

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 279
    const-string v0, "http://com.thoughtworks.xstream/sax/property/configured-xstream"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    instance-of v0, p2, Lcom/thoughtworks/xstream/XStream;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "Value for property \"http://com.thoughtworks.xstream/sax/property/configured-xstream\" must be a non-null XStream object"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_1
    const-string v0, "http://com.thoughtworks.xstream/sax/property/source-object-list"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 287
    move-object v0, p2

    check-cast v0, Ljava/util/List;

    .line 289
    .local v0, "list":Ljava/util/List;
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 296
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 298
    .end local v0    # "list":Ljava/util/List;
    nop

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    return-void

    .line 290
    .restart local v0    # "list":Ljava/util/List;
    :cond_2
    new-instance v1, Lorg/xml/sax/SAXNotSupportedException;

    const-string v2, "Value for property \"http://com.thoughtworks.xstream/sax/property/source-object-list\" shall not be an empty list"

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 299
    .end local v0    # "list":Ljava/util/List;
    :cond_3
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "Value for property \"http://com.thoughtworks.xstream/sax/property/source-object-list\" must be a non-null List object"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_4
    new-instance v0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {v0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/String;

    .line 634
    :try_start_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->flushStartTag()V

    .line 636
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 637
    .local v0, "lg":I
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->buffer:[C

    array-length v1, v1

    if-le v0, v1, :cond_0

    .line 638
    new-array v1, v0, [C

    iput-object v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->buffer:[C

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->buffer:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, v2}, Ljava/lang/String;->getChars(II[CI)V

    .line 642
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->buffer:[C

    invoke-interface {v1, v3, v2, v0}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 645
    .end local v0    # "lg":I
    nop

    .line 646
    return-void

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 609
    :try_start_0
    iget v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 610
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->flushStartTag()V

    goto :goto_0

    .line 611
    :cond_0
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->includeEnclosingDocument:Z

    if-eqz v0, :cond_1

    .line 612
    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startDocument(Z)V

    .line 614
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->elementStack:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->escapeXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startTagInProgress:Z

    .line 617
    iget v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    nop

    .line 621
    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
