.class public Lcom/thoughtworks/xstream/io/xml/JDomDriver;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;
.source "JDomDriver.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 45
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .line 53
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/JDomDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 54
    return-void
.end method


# virtual methods
.method protected createBuilder()Lorg/jdom/input/SAXBuilder;
    .locals 3

    .line 119
    new-instance v0, Lorg/jdom/input/SAXBuilder;

    invoke-direct {v0}, Lorg/jdom/input/SAXBuilder;-><init>()V

    .line 120
    .local v0, "builder":Lorg/jdom/input/SAXBuilder;
    const-string v1, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/jdom/input/SAXBuilder;->setFeature(Ljava/lang/String;Z)V

    .line 121
    return-object v0
.end method

.method public createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 4
    .param p1, "in"    # Ljava/io/File;

    .line 94
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDomDriver;->createBuilder()Lorg/jdom/input/SAXBuilder;

    move-result-object v0

    .line 95
    .local v0, "builder":Lorg/jdom/input/SAXBuilder;
    invoke-virtual {v0, p1}, Lorg/jdom/input/SAXBuilder;->build(Ljava/io/File;)Lorg/jdom/Document;

    move-result-object v1

    .line 96
    .local v1, "document":Lorg/jdom/Document;
    new-instance v2, Lcom/thoughtworks/xstream/io/xml/JDomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/thoughtworks/xstream/io/xml/JDomReader;-><init>(Lorg/jdom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jdom/JDOMException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 99
    .end local v0    # "builder":Lorg/jdom/input/SAXBuilder;
    .end local v1    # "document":Lorg/jdom/Document;
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Lorg/jdom/JDOMException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 97
    .end local v0    # "e":Lorg/jdom/JDOMException;
    :catch_1
    move-exception v0

    .line 98
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;

    .line 70
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDomDriver;->createBuilder()Lorg/jdom/input/SAXBuilder;

    move-result-object v0

    .line 71
    .local v0, "builder":Lorg/jdom/input/SAXBuilder;
    invoke-virtual {v0, p1}, Lorg/jdom/input/SAXBuilder;->build(Ljava/io/InputStream;)Lorg/jdom/Document;

    move-result-object v1

    .line 72
    .local v1, "document":Lorg/jdom/Document;
    new-instance v2, Lcom/thoughtworks/xstream/io/xml/JDomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/thoughtworks/xstream/io/xml/JDomReader;-><init>(Lorg/jdom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jdom/JDOMException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 75
    .end local v0    # "builder":Lorg/jdom/input/SAXBuilder;
    .end local v1    # "document":Lorg/jdom/Document;
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Lorg/jdom/JDOMException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 73
    .end local v0    # "e":Lorg/jdom/JDOMException;
    :catch_1
    move-exception v0

    .line 74
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 4
    .param p1, "reader"    # Ljava/io/Reader;

    .line 58
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDomDriver;->createBuilder()Lorg/jdom/input/SAXBuilder;

    move-result-object v0

    .line 59
    .local v0, "builder":Lorg/jdom/input/SAXBuilder;
    invoke-virtual {v0, p1}, Lorg/jdom/input/SAXBuilder;->build(Ljava/io/Reader;)Lorg/jdom/Document;

    move-result-object v1

    .line 60
    .local v1, "document":Lorg/jdom/Document;
    new-instance v2, Lcom/thoughtworks/xstream/io/xml/JDomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/thoughtworks/xstream/io/xml/JDomReader;-><init>(Lorg/jdom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jdom/JDOMException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 63
    .end local v0    # "builder":Lorg/jdom/input/SAXBuilder;
    .end local v1    # "document":Lorg/jdom/Document;
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lorg/jdom/JDOMException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 61
    .end local v0    # "e":Lorg/jdom/JDOMException;
    :catch_1
    move-exception v0

    .line 62
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 4
    .param p1, "in"    # Ljava/net/URL;

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDomDriver;->createBuilder()Lorg/jdom/input/SAXBuilder;

    move-result-object v0

    .line 83
    .local v0, "builder":Lorg/jdom/input/SAXBuilder;
    invoke-virtual {v0, p1}, Lorg/jdom/input/SAXBuilder;->build(Ljava/net/URL;)Lorg/jdom/Document;

    move-result-object v1

    .line 84
    .local v1, "document":Lorg/jdom/Document;
    new-instance v2, Lcom/thoughtworks/xstream/io/xml/JDomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/thoughtworks/xstream/io/xml/JDomReader;-><init>(Lorg/jdom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jdom/JDOMException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 87
    .end local v0    # "builder":Lorg/jdom/input/SAXBuilder;
    .end local v1    # "document":Lorg/jdom/Document;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lorg/jdom/JDOMException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 85
    .end local v0    # "e":Lorg/jdom/JDOMException;
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 109
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;)V

    return-object v0
.end method

.method public createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    .line 105
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/JDomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-object v0
.end method
