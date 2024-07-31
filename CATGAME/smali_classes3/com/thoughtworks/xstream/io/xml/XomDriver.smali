.class public Lcom/thoughtworks/xstream/io/xml/XomDriver;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;
.source "XomDriver.java"


# instance fields
.field private final builder:Lnu/xom/Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 52
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomDriver;->builder:Lnu/xom/Builder;

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .line 70
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XomDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lnu/xom/Builder;)V
    .locals 1
    .param p1, "builder"    # Lnu/xom/Builder;

    .line 45
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;-><init>(Lnu/xom/Builder;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lnu/xom/Builder;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "builder"    # Lnu/xom/Builder;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 61
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 62
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/XomDriver;->builder:Lnu/xom/Builder;

    .line 63
    return-void
.end method

.method public constructor <init>(Lnu/xom/Builder;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0
    .param p1, "builder"    # Lnu/xom/Builder;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .line 78
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/XomDriver;-><init>(Lnu/xom/Builder;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 79
    return-void
.end method


# virtual methods
.method protected createBuilder()Lnu/xom/Builder;
    .locals 2

    .line 102
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->getBuilder()Lnu/xom/Builder;

    move-result-object v0

    .line 103
    .local v0, "builder":Lnu/xom/Builder;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lnu/xom/Builder;

    invoke-direct {v1}, Lnu/xom/Builder;-><init>()V

    :goto_0
    return-object v1
.end method

.method public createReader(Ljava/io/File;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3
    .param p1, "in"    # Ljava/io/File;

    .line 147
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->createBuilder()Lnu/xom/Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnu/xom/Builder;->build(Ljava/io/File;)Lnu/xom/Document;

    move-result-object v0

    .line 148
    .local v0, "document":Lnu/xom/Document;
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/thoughtworks/xstream/io/xml/XomReader;-><init>(Lnu/xom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lnu/xom/ValidityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnu/xom/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 153
    .end local v0    # "document":Lnu/xom/Document;
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 151
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 152
    .local v0, "e":Lnu/xom/ParsingException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 149
    .end local v0    # "e":Lnu/xom/ParsingException;
    :catch_2
    move-exception v0

    .line 150
    .local v0, "e":Lnu/xom/ValidityException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createReader(Ljava/io/InputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;

    .line 121
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->createBuilder()Lnu/xom/Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnu/xom/Builder;->build(Ljava/io/InputStream;)Lnu/xom/Document;

    move-result-object v0

    .line 122
    .local v0, "document":Lnu/xom/Document;
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/thoughtworks/xstream/io/xml/XomReader;-><init>(Lnu/xom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lnu/xom/ValidityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnu/xom/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 127
    .end local v0    # "document":Lnu/xom/Document;
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 125
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e":Lnu/xom/ParsingException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 123
    .end local v0    # "e":Lnu/xom/ParsingException;
    :catch_2
    move-exception v0

    .line 124
    .local v0, "e":Lnu/xom/ValidityException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createReader(Ljava/io/Reader;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3
    .param p1, "text"    # Ljava/io/Reader;

    .line 108
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->createBuilder()Lnu/xom/Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnu/xom/Builder;->build(Ljava/io/Reader;)Lnu/xom/Document;

    move-result-object v0

    .line 109
    .local v0, "document":Lnu/xom/Document;
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/thoughtworks/xstream/io/xml/XomReader;-><init>(Lnu/xom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lnu/xom/ValidityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnu/xom/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 114
    .end local v0    # "document":Lnu/xom/Document;
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 112
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 113
    .local v0, "e":Lnu/xom/ParsingException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 110
    .end local v0    # "e":Lnu/xom/ParsingException;
    :catch_2
    move-exception v0

    .line 111
    .local v0, "e":Lnu/xom/ValidityException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createReader(Ljava/net/URL;)Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .locals 3
    .param p1, "in"    # Ljava/net/URL;

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->createBuilder()Lnu/xom/Builder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnu/xom/Builder;->build(Ljava/lang/String;)Lnu/xom/Document;

    move-result-object v0

    .line 135
    .local v0, "document":Lnu/xom/Document;
    new-instance v1, Lcom/thoughtworks/xstream/io/xml/XomReader;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/thoughtworks/xstream/io/xml/XomReader;-><init>(Lnu/xom/Document;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    :try_end_0
    .catch Lnu/xom/ValidityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lnu/xom/ParsingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 140
    .end local v0    # "document":Lnu/xom/Document;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 138
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 139
    .local v0, "e":Lnu/xom/ParsingException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 136
    .end local v0    # "e":Lnu/xom/ParsingException;
    :catch_2
    move-exception v0

    .line 137
    .local v0, "e":Lnu/xom/ValidityException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createWriter(Ljava/io/OutputStream;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;

    .line 163
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-object v0
.end method

.method public createWriter(Ljava/io/Writer;)Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;

    .line 159
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XomDriver;->getNameCoder()Lcom/thoughtworks/xstream/io/naming/NameCoder;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/thoughtworks/xstream/io/xml/PrettyPrintWriter;-><init>(Ljava/io/Writer;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-object v0
.end method

.method protected getBuilder()Lnu/xom/Builder;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XomDriver;->builder:Lnu/xom/Builder;

    return-object v0
.end method
