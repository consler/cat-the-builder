.class public Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;
.super Lcom/thoughtworks/xstream/io/AbstractDriver;
.source "JettisonMappedXmlDriver.java"


# instance fields
.field protected final convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

.field protected final mif:Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

.field protected final mof:Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

.field protected final useSerializeAsArray:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    new-instance v0, Lorg/codehaus/jettison/mapped/Configuration;

    invoke-direct {v0}, Lorg/codehaus/jettison/mapped/Configuration;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;-><init>(Lorg/codehaus/jettison/mapped/Configuration;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jettison/mapped/Configuration;)V
    .locals 1
    .param p1, "config"    # Lorg/codehaus/jettison/mapped/Configuration;

    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;-><init>(Lorg/codehaus/jettison/mapped/Configuration;Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jettison/mapped/Configuration;Z)V
    .locals 1
    .param p1, "config"    # Lorg/codehaus/jettison/mapped/Configuration;
    .param p2, "useSerializeAsArray"    # Z

    .line 76
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/AbstractDriver;-><init>()V

    .line 77
    new-instance v0, Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

    invoke-direct {v0, p1}, Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;-><init>(Lorg/codehaus/jettison/mapped/Configuration;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mof:Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

    .line 78
    new-instance v0, Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

    invoke-direct {v0, p1}, Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;-><init>(Lorg/codehaus/jettison/mapped/Configuration;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mif:Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

    .line 79
    new-instance v0, Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    invoke-direct {v0, p1}, Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;-><init>(Lorg/codehaus/jettison/mapped/Configuration;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    .line 80
    iput-boolean p2, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->useSerializeAsArray:Z

    .line 81
    return-void
.end method


# virtual methods
.method public createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 5
    .param p1, "in"    # Ljava/io/File;

    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "instream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 124
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/StaxReader;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mif:Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

    .line 125
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v4

    .line 126
    invoke-virtual {v4}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v4

    .line 124
    invoke-virtual {v3, v4, v0}, Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v3

    .line 126
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/thoughtworks/xstream/io/xml/StaxReader;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamReader;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    nop

    .line 134
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 137
    goto :goto_0

    .line 135
    :catch_0
    move-exception v2

    .line 124
    :goto_0
    return-object v1

    .line 132
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 129
    :catch_1
    move-exception v1

    .line 130
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "instream":Ljava/io/InputStream;
    .end local p1    # "in":Ljava/io/File;
    throw v2

    .line 127
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/File;
    :catch_2
    move-exception v1

    .line 128
    .local v1, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "instream":Ljava/io/InputStream;
    .end local p1    # "in":Ljava/io/File;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    .end local v1    # "e":Ljavax/xml/stream/XMLStreamException;
    .restart local v0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/io/File;
    :goto_1
    if-eqz v0, :cond_0

    .line 134
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 137
    goto :goto_2

    .line 135
    :catch_3
    move-exception v2

    .line 139
    :cond_0
    :goto_2
    throw v1
.end method

.method public createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 4
    .param p1, "input"    # Ljava/io/InputStream;

    .line 93
    :try_start_0
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/StaxReader;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mif:Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;->createXMLStreamReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/io/xml/StaxReader;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamReader;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 4
    .param p1, "reader"    # Ljava/io/Reader;

    .line 85
    :try_start_0
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/StaxReader;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mif:Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;->createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/io/xml/StaxReader;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamReader;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 5
    .param p1, "in"    # Ljava/net/URL;

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "instream":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    move-object v0, v1

    .line 103
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/StaxReader;

    new-instance v2, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v2}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v3, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mif:Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;

    .line 104
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v4

    .line 103
    invoke-virtual {v3, v4, v0}, Lorg/codehaus/jettison/mapped/MappedXMLInputFactory;->createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v3

    .line 104
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/thoughtworks/xstream/io/xml/StaxReader;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamReader;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    if-eqz v0, :cond_0

    .line 112
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 103
    :cond_0
    :goto_0
    return-object v1

    .line 110
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 107
    :catch_1
    move-exception v1

    .line 108
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "instream":Ljava/io/InputStream;
    .end local p1    # "in":Ljava/net/URL;
    throw v2

    .line 105
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/net/URL;
    :catch_2
    move-exception v1

    .line 106
    .local v1, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "instream":Ljava/io/InputStream;
    .end local p1    # "in":Ljava/net/URL;
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .end local v1    # "e":Ljavax/xml/stream/XMLStreamException;
    .restart local v0    # "instream":Ljava/io/InputStream;
    .restart local p1    # "in":Ljava/net/URL;
    :goto_1
    if-eqz v0, :cond_1

    .line 112
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 115
    goto :goto_2

    .line 113
    :catch_3
    move-exception v2

    .line 117
    :cond_1
    :goto_2
    throw v1
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 5
    .param p1, "output"    # Ljava/io/OutputStream;

    .line 156
    :try_start_0
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->useSerializeAsArray:Z

    if-eqz v0, :cond_0

    .line 157
    new-instance v0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mof:Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;->createXMLStreamWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v3

    iget-object v4, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V

    return-object v0

    .line 159
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mof:Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;->createXMLStreamWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 5
    .param p1, "writer"    # Ljava/io/Writer;

    .line 144
    :try_start_0
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->useSerializeAsArray:Z

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mof:Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;->createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v3

    iget-object v4, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->convention:Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/thoughtworks/xstream/io/json/JettisonStaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;Lorg/codehaus/jettison/mapped/MappedNamespaceConvention;)V

    return-object v0

    .line 147
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/StaxWriter;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/QNameMap;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/QNameMap;-><init>()V

    iget-object v2, p0, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->mof:Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;

    invoke-virtual {v2, p1}, Lorg/codehaus/jettison/mapped/MappedXMLOutputFactory;->createXMLStreamWriter(Ljava/io/Writer;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/json/JettisonMappedXmlDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/io/xml/StaxWriter;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Ljavax/xml/stream/XMLStreamWriter;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
