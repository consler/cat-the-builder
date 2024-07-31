.class public Lcom/thoughtworks/xstream/mapper/DefaultMapper;
.super Ljava/lang/Object;
.source "DefaultMapper.java"

# interfaces
.implements Lcom/thoughtworks/xstream/mapper/Mapper;


# static fields
.field private static XSTREAM_PACKAGE_ROOT:Ljava/lang/String;

.field static synthetic class$com$thoughtworks$xstream$mapper$DefaultMapper:Ljava/lang/Class;


# instance fields
.field private final classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    sget-object v0, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->class$com$thoughtworks$xstream$mapper$DefaultMapper:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "com.thoughtworks.xstream.mapper.DefaultMapper"

    invoke-static {v0}, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->class$com$thoughtworks$xstream$mapper$DefaultMapper:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, ".xstream."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 35
    .local v1, "idx":I
    if-lez v1, :cond_1

    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x9

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string v2, ".N/A"

    :goto_0
    sput-object v2, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->XSTREAM_PACKAGE_ROOT:Ljava/lang/String;

    .line 36
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "idx":I
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V
    .locals 0
    .param p1, "classLoaderReference"    # Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    .line 58
    new-instance v0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/mapper/DefaultMapper;-><init>(Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    .line 59
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 33
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


# virtual methods
.method public aliasForAttribute(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 183
    return-object p2
.end method

.method public aliasForAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "attribute"    # Ljava/lang/String;

    .line 90
    return-object p1
.end method

.method public aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "attribute"    # Ljava/lang/String;

    .line 98
    return-object p1
.end method

.method public attributeForAlias(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "alias"    # Ljava/lang/String;

    .line 190
    return-object p2
.end method

.method public attributeForAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "alias"    # Ljava/lang/String;

    .line 94
    return-object p1
.end method

.method public defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0
    .param p1, "type"    # Ljava/lang/Class;

    .line 86
    return-object p1
.end method

.method public getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "attribute"    # Ljava/lang/String;

    .line 197
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/Class;

    .line 201
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConverterFromAttribute(Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 149
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConverterFromItemType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 163
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .line 156
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "definedIn"    # Ljava/lang/Class;

    .line 168
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFieldNameForItemTypeAndName(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "itemType"    # Ljava/lang/Class;
    .param p3, "itemFieldName"    # Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImplicitCollectionDefForFieldName(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;
    .locals 1
    .param p1, "itemType"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemTypeForItemFieldName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "itemFieldName"    # Ljava/lang/String;

    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public isIgnoredElement(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public isImmutableValueType(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public isReferenceable(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 106
    const/4 v0, 0x1

    return v0
.end method

.method public lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 176
    const/4 v0, 0x0

    return-object v0
.end method

.method public lookupName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 130
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public lookupType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;

    .line 134
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public realClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 6
    .param p1, "elementName"    # Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lcom/thoughtworks/xstream/core/util/Primitives;->primitiveType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 67
    .local v0, "resultingClass":Ljava/lang/Class;
    if-eqz v0, :cond_0

    .line 68
    return-object v0

    .line 71
    :cond_0
    const/4 v1, 0x1

    .line 73
    .local v1, "initialize":Z
    :try_start_0
    sget-object v2, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->XSTREAM_PACKAGE_ROOT:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 74
    sget-object v2, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->class$com$thoughtworks$xstream$mapper$DefaultMapper:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "com.thoughtworks.xstream.mapper.DefaultMapper"

    invoke-static {v2}, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->class$com$thoughtworks$xstream$mapper$DefaultMapper:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->class$com$thoughtworks$xstream$mapper$DefaultMapper:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .local v2, "classLoader":Ljava/lang/ClassLoader;
    goto :goto_1

    .line 76
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    :cond_2
    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v2}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 77
    .restart local v2    # "classLoader":Ljava/lang/ClassLoader;
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    move v1, v3

    .line 79
    :goto_1
    invoke-static {p1, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 80
    .end local v1    # "initialize":Z
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    :catch_0
    move-exception v1

    .line 81
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Lcom/thoughtworks/xstream/mapper/CannotResolveClassException;

    invoke-direct {v2, p1}, Lcom/thoughtworks/xstream/mapper/CannotResolveClassException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "serialized"    # Ljava/lang/String;

    .line 142
    return-object p2
.end method

.method public serializedClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 62
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "memberName"    # Ljava/lang/String;

    .line 138
    return-object p2
.end method

.method public shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 122
    const/4 v0, 0x1

    return v0
.end method
