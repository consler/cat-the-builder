.class public Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;
.super Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;
.source "FilePersistenceStrategy.java"


# instance fields
.field private final illegalChars:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "baseDirectory"    # Ljava/io/File;

    .line 44
    new-instance v0, Lcom/thoughtworks/xstream/XStream;

    new-instance v1, Lcom/thoughtworks/xstream/io/xml/DomDriver;

    invoke-direct {v1}, Lcom/thoughtworks/xstream/io/xml/DomDriver;-><init>()V

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/XStream;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamDriver;)V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;-><init>(Ljava/io/File;Lcom/thoughtworks/xstream/XStream;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/thoughtworks/xstream/XStream;)V
    .locals 2
    .param p1, "baseDirectory"    # Ljava/io/File;
    .param p2, "xstream"    # Lcom/thoughtworks/xstream/XStream;

    .line 55
    const-string v0, "utf-8"

    const-string v1, "<>?:/\\\"|*%"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;-><init>(Ljava/io/File;Lcom/thoughtworks/xstream/XStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/thoughtworks/xstream/XStream;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "baseDirectory"    # Ljava/io/File;
    .param p2, "xstream"    # Lcom/thoughtworks/xstream/XStream;
    .param p3, "encoding"    # Ljava/lang/String;
    .param p4, "illegalChars"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;-><init>(Ljava/io/File;Lcom/thoughtworks/xstream/XStream;Ljava/lang/String;)V

    .line 71
    iput-object p4, p0, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;->illegalChars:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method protected escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 145
    .local v0, "buffer":Ljava/lang/StringBuffer;
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 146
    .local v1, "array":[C
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 147
    aget-char v3, v1, v2

    .line 148
    .local v3, "c":C
    const/16 v4, 0x20

    if-lt v3, v4, :cond_0

    iget-object v4, p0, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;->illegalChars:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_0

    .line 149
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 151
    :cond_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 146
    .end local v3    # "c":C
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 154
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected extractKey(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "key":Ljava/lang/String;
    const-string v2, "null@null"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    const/4 v1, 0x0

    return-object v1

    .line 89
    :cond_0
    const/16 v2, 0x40

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 90
    .local v2, "idx":I
    if-ltz v2, :cond_2

    .line 95
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 96
    .local v1, "type":Ljava/lang/Class;
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;->getConverterLookup()Lcom/thoughtworks/xstream/converters/ConverterLookup;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v3

    .line 97
    .local v3, "converter":Lcom/thoughtworks/xstream/converters/Converter;
    instance-of v4, v3, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    if-eqz v4, :cond_1

    .line 98
    move-object v4, v3

    check-cast v4, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    .line 99
    .local v4, "svConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    return-object v5

    .line 101
    .end local v4    # "svConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    :cond_1
    new-instance v4, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v5, "No SingleValueConverter available for key type"

    invoke-direct {v4, v5}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 103
    .local v4, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "key-type"

    invoke-virtual {v4, v6, v5}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    throw v4

    .line 91
    .end local v1    # "type":Ljava/lang/Class;
    .end local v3    # "converter":Lcom/thoughtworks/xstream/converters/Converter;
    .end local v4    # "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    :cond_2
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v3, "No valid key"

    invoke-direct {v1, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    const-string v3, "key"

    invoke-virtual {v1, v3, v0}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    throw v1
.end method

.method protected getName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;

    .line 127
    if-nez p1, :cond_0

    .line 128
    const-string v0, "null@null.xml"

    return-object v0

    .line 130
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 131
    .local v0, "type":Ljava/lang/Class;
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;->getConverterLookup()Lcom/thoughtworks/xstream/converters/ConverterLookup;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v1

    .line 132
    .local v1, "converter":Lcom/thoughtworks/xstream/converters/Converter;
    instance-of v2, v1, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    if-eqz v2, :cond_1

    .line 133
    move-object v2, v1

    check-cast v2, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    .line 134
    .local v2, "svConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;->getMapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {v2, p1}, Lcom/thoughtworks/xstream/converters/SingleValueConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/thoughtworks/xstream/persistence/FilePersistenceStrategy;->escape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ".xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 136
    .end local v2    # "svConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    :cond_1
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v3, "No SingleValueConverter available for key type"

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key-type"

    invoke-virtual {v2, v4, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    throw v2
.end method

.method protected isValid(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 75
    invoke-super {p0, p1, p2}, Lcom/thoughtworks/xstream/persistence/AbstractFilePersistenceStrategy;->isValid(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 110
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/16 v1, 0x25

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .local v2, "idx":I
    :goto_0
    if-ltz v2, :cond_0

    .line 111
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    add-int/lit8 v3, v2, 0x1

    add-int/lit8 v4, v2, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 113
    .local v3, "c":I
    int-to-char v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    add-int/lit8 v4, v2, 0x3

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 110
    .end local v3    # "c":I
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    goto :goto_0

    .line 116
    .end local v2    # "idx":I
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
