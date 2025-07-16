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
    .locals 3

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

    const-string v1, ".xstream."

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, 0x9

    const/4 v2, 0x0

    .line 35
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ".N/A"

    :goto_0
    sput-object v0, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->XSTREAM_PACKAGE_ROOT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 58
    new-instance v0, Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;-><init>(Ljava/lang/ClassLoader;)V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/mapper/DefaultMapper;-><init>(Lcom/thoughtworks/xstream/core/ClassLoaderReference;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 33
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public aliasForAttribute(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public aliasForAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public attributeForAlias(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public attributeForAlias(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public defaultImplementationOf(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    return-object p1
.end method

.method public getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getConverterFromAttribute(Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getConverterFromItemType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFieldNameForItemTypeAndName(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getImplicitCollectionDefForFieldName(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/mapper/Mapper$ImplicitCollectionMapping;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemTypeForItemFieldName(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocalConverter(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/Converter;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public isIgnoredElement(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isImmutableValueType(Ljava/lang/Class;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isReferenceable(Ljava/lang/Class;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public lookupName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public lookupType(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public realClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5

    .line 66
    invoke-static {p1}, Lcom/thoughtworks/xstream/core/util/Primitives;->primitiveType(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 73
    :cond_0
    :try_start_0
    sget-object v0, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->XSTREAM_PACKAGE_ROOT:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 74
    sget-object v0, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->class$com$thoughtworks$xstream$mapper$DefaultMapper:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "com.thoughtworks.xstream.mapper.DefaultMapper"

    invoke-static {v0}, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->class$com$thoughtworks$xstream$mapper$DefaultMapper:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/DefaultMapper;->classLoaderReference:Lcom/thoughtworks/xstream/core/ClassLoaderReference;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/ClassLoaderReference;->getReference()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v2, 0x0

    .line 77
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    .line 79
    :goto_0
    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 81
    :catch_0
    new-instance v0, Lcom/thoughtworks/xstream/mapper/CannotResolveClassException;

    invoke-direct {v0, p1}, Lcom/thoughtworks/xstream/mapper/CannotResolveClassException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public realMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public serializedClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0

    .line 62
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public serializedMember(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p2
.end method

.method public shouldSerializeMember(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
