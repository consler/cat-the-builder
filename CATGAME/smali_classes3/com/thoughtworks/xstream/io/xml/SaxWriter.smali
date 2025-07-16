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

    const/4 v0, 0x1

    .line 162
    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    const/4 v0, 0x1

    .line 129
    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>(ZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 1

    const/4 v0, 0x1

    .line 146
    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>(ZLcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 158
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>(ZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(ZLcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    .line 137
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlWriter;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    const/4 p2, 0x0

    .line 90
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    .line 95
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    .line 100
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    .line 105
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    .line 115
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->features:Ljava/util/Map;

    .line 120
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->properties:Ljava/util/Map;

    const/4 p2, 0x0

    .line 601
    iput p2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    .line 602
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->elementStack:Ljava/util/List;

    const/16 v0, 0x80

    new-array v0, v0, [C

    .line 603
    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->buffer:[C

    .line 604
    iput-boolean p2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startTagInProgress:Z

    .line 605
    new-instance p2, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {p2}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->attributeList:Lorg/xml/sax/helpers/AttributesImpl;

    .line 138
    iput-boolean p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->includeEnclosingDocument:Z

    return-void
.end method

.method public constructor <init>(ZLcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    .line 154
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;-><init>(ZLcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method private endDocument(Z)V
    .locals 2
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
    iget-object p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    const/4 p1, 0x0

    .line 699
    iput p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

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

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 713
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    const-string v3, ""

    iget-object v4, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->attributeList:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-interface {v2, v3, v0, v0, v4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 715
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->attributeList:Lorg/xml/sax/helpers/AttributesImpl;

    invoke-virtual {v0}, Lorg/xml/sax/helpers/AttributesImpl;->clear()V

    .line 716
    iput-boolean v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startTagInProgress:Z

    :cond_0
    return-void
.end method

.method private parse()V
    .locals 4
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

    move-object v1, v0

    check-cast v1, Lcom/thoughtworks/xstream/XStream;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/XStream;-><init>()V

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->properties:Ljava/util/Map;

    const-string v2, "http://com.thoughtworks.xstream/sax/property/source-object-list"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 576
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    .line 582
    :try_start_0
    invoke-direct {p0, v2}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startDocument(Z)V

    .line 583
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 584
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3, p0}, Lcom/thoughtworks/xstream/XStream;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;)V

    goto :goto_0

    .line 586
    :cond_1
    invoke-direct {p0, v2}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->endDocument(Z)V
    :try_end_0
    .catch Lcom/thoughtworks/xstream/io/StreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 588
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/StreamException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lorg/xml/sax/SAXException;

    if-eqz v1, :cond_2

    .line 589
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/io/StreamException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/SAXException;

    move-object v1, v0

    check-cast v1, Lorg/xml/sax/SAXException;

    throw v0

    .line 591
    :cond_2
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 577
    :cond_3
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Missing or empty source object list. Setting property \"http://com.thoughtworks.xstream/sax/property/source-object-list\" is mandatory"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startDocument(Z)V
    .locals 1
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

    if-eqz p1, :cond_0

    .line 682
    iget p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    :cond_0
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 624
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startTagInProgress:Z

    if-eqz v0, :cond_0

    .line 625
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->escapeXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 626
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->attributeList:Lorg/xml/sax/helpers/AttributesImpl;

    const-string v2, ""

    const-string v5, "CDATA"

    move-object v3, v4

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 628
    :cond_0
    new-instance p1, Lcom/thoughtworks/xstream/io/StreamException;

    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v0, "No startElement being processed"

    invoke-direct {p2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public close()V
    .locals 0

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

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 654
    iget-object v2, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    const-string v3, ""

    invoke-interface {v2, v3, v0, v0}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    iget v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    if-nez v0, :cond_0

    .line 657
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->includeEnclosingDocument:Z

    if-eqz v0, :cond_0

    .line 658
    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->endDocument(Z)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    .line 661
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public flush()V
    .locals 0

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
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/features/namespaces"

    .line 232
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    .line 233
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

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    if-nez p1, :cond_2

    .line 237
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 239
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    const-string v0, "http://com.thoughtworks.xstream/sax/property/configured-xstream"

    .line 334
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://com.thoughtworks.xstream/sax/property/source-object-list"

    .line 335
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

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 517
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->parse()V

    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 559
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->parse()V

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 434
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    return-void

    .line 432
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "handler"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 399
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->dtdHandler:Lorg/xml/sax/DTDHandler;

    return-void

    .line 397
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "handler"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 365
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->entityResolver:Lorg/xml/sax/EntityResolver;

    return-void

    .line 363
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "resolver"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 471
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->errorHandler:Lorg/xml/sax/ErrorHandler;

    return-void

    .line 469
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "handler"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    const-string v0, "http://xml.org/sax/features/namespaces"

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "http://xml.org/sax/features/namespace-prefixes"

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    new-instance p2, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 197
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->features:Ljava/util/Map;

    if-eqz p2, :cond_2

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const-string v0, "http://com.thoughtworks.xstream/sax/property/configured-xstream"

    .line 279
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 280
    instance-of v0, p2, Lcom/thoughtworks/xstream/XStream;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    const-string p2, "Value for property \"http://com.thoughtworks.xstream/sax/property/configured-xstream\" must be a non-null XStream object"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "http://com.thoughtworks.xstream/sax/property/source-object-list"

    .line 285
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 286
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_3

    .line 287
    check-cast p2, Ljava/util/List;

    .line 289
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    .line 306
    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->properties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 290
    :cond_2
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    const-string p2, "Value for property \"http://com.thoughtworks.xstream/sax/property/source-object-list\" shall not be an empty list"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 299
    :cond_3
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    const-string p2, "Value for property \"http://com.thoughtworks.xstream/sax/property/source-object-list\" must be a non-null List object"

    invoke-direct {p1, p2}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 304
    :cond_4
    new-instance p2, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-direct {p2, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3

    .line 634
    :try_start_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->flushStartTag()V

    .line 636
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 637
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
    iget-object p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->contentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->buffer:[C

    invoke-interface {p1, v1, v2, v0}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 644
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public startNode(Ljava/lang/String;)V
    .locals 2

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

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    .line 616
    iput-boolean p1, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->startTagInProgress:Z

    .line 617
    iget v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/thoughtworks/xstream/io/xml/SaxWriter;->depth:I
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 619
    new-instance v0, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
