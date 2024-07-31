.class public Lcom/thoughtworks/xstream/io/xml/DomDriver;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;
.source "DomDriver.java"


# static fields
.field static synthetic class$java$lang$String:Ljava/lang/Class;

.field static synthetic class$javax$xml$parsers$DocumentBuilderFactory:Ljava/lang/Class;


# instance fields
.field private documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private final encoding:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "encoding"    # Ljava/lang/String;

    .line 60
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>(Ljava/lang/String;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 67
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 68
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->encoding:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "encoding"    # Ljava/lang/String;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>(Ljava/lang/String;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 77
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 146
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method

.method private createReader(Lorg/xml/sax/InputSource;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 4
    .param p1, "source"    # Lorg/xml/sax/InputSource;

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    if-nez v0, :cond_1

    .line 98
    monitor-enter p0
    :try_end_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :try_start_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 102
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "source":Lorg/xml/sax/InputSource;
    :try_start_2
    throw v0

    .line 104
    .restart local p1    # "source":Lorg/xml/sax/InputSource;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->documentBuilderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 105
    .local v0, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->encoding:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->encoding:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    .line 108
    :cond_2
    invoke-virtual {v0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 109
    .local v1, "document":Lorg/w3c/dom/Document;
    new-instance v2, Lcom/thoughtworks/xstream/io/xml/DomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lcom/thoughtworks/xstream/io/xml/DomReader;-><init>(Lorg/w3c/dom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v2

    .line 116
    .end local v0    # "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v1    # "document":Lorg/w3c/dom/Document;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 114
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 115
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 112
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v0

    .line 113
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 110
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_3
    move-exception v0

    .line 111
    .local v0, "e":Ljavax/xml/parsers/FactoryConfigurationError;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 8

    .line 142
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 143
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 145
    :try_start_0
    sget-object v1, Lcom/thoughtworks/xstream/io/xml/DomDriver;->class$javax$xml$parsers$DocumentBuilderFactory:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "javax.xml.parsers.DocumentBuilderFactory"

    invoke-static {v1}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/io/xml/DomDriver;->class$javax$xml$parsers$DocumentBuilderFactory:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/thoughtworks/xstream/io/xml/DomDriver;->class$javax$xml$parsers$DocumentBuilderFactory:Ljava/lang/Class;

    :goto_0
    const-string v3, "setFeature"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Lcom/thoughtworks/xstream/io/xml/DomDriver;->class$java$lang$String:Ljava/lang/Class;

    if-nez v6, :cond_1

    const-string v6, "java.lang.String"

    .line 146
    invoke-static {v6}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lcom/thoughtworks/xstream/io/xml/DomDriver;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_1

    :cond_1
    sget-object v6, Lcom/thoughtworks/xstream/io/xml/DomDriver;->class$java$lang$String:Ljava/lang/Class;

    :goto_1
    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 145
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 147
    .local v1, "method":Ljava/lang/reflect/Method;
    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "http://apache.org/xml/features/disallow-doctype-decl"

    aput-object v4, v3, v2

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v4, v3, v7

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    nop

    .end local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_2

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    .line 154
    .local v3, "cause":Ljava/lang/Throwable;
    const/4 v4, 0x6

    invoke-static {v4}, Lcom/thoughtworks/xstream/core/JVM;->isVersion(I)Z

    move-result v4

    if-nez v4, :cond_2

    instance-of v4, v3, Ljavax/xml/parsers/ParserConfigurationException;

    if-eqz v4, :cond_3

    .line 156
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    const-string v5, "disallow-doctype-decl"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    goto :goto_2

    .line 157
    :cond_2
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 150
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    .end local v3    # "cause":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v3, "Cannot set feature of DocumentBuilderFactory."

    invoke-direct {v2, v3, v1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 148
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 161
    :cond_3
    :goto_2
    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V

    .line 162
    return-object v0
.end method

.method public createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 2
    .param p1, "in"    # Ljava/io/File;

    .line 92
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->createReader(Lorg/xml/sax/InputSource;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .line 84
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->createReader(Lorg/xml/sax/InputSource;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;

    .line 80
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->createReader(Lorg/xml/sax/InputSource;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 2
    .param p1, "in"    # Ljava/net/URL;

    .line 88
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->createReader(Lorg/xml/sax/InputSource;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;

    move-result-object v0

    return-object v0
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->encoding:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/DomDriver;->encoding:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    :goto_0
    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    .line 122
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/DomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-object v0
.end method
