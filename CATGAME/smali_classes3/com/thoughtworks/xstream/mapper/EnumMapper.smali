.class public Lcom/thoughtworks/xstream/mapper/EnumMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "EnumMapper.java"

# interfaces
.implements Lcom/thoughtworks/xstream/core/Caching;


# instance fields
.field private transient attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

.field private transient enumConverterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/thoughtworks/xstream/converters/SingleValueConverter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 47
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 48
    invoke-direct {p0}, Lcom/thoughtworks/xstream/mapper/EnumMapper;->readResolve()Ljava/lang/Object;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;)V
    .locals 0
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "lookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 43
    invoke-direct {p0}, Lcom/thoughtworks/xstream/mapper/EnumMapper;->readResolve()Ljava/lang/Object;

    .line 44
    return-void
.end method

.method private getLocalConverter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "definedIn"    # Ljava/lang/Class;

    .line 98
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/EnumMapper;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    if-eqz v0, :cond_2

    const-class v0, Ljava/lang/Enum;

    .line 99
    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/EnumMapper;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    .line 100
    invoke-virtual {v0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->shouldLookForSingleValueConverter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/EnumMapper;->enumConverterMap:Ljava/util/Map;

    monitor-enter v0

    .line 102
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/EnumMapper;->enumConverterMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    .line 103
    .local v1, "singleValueConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    if-nez v1, :cond_1

    .line 104
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v2

    move-object v1, v2

    .line 105
    if-nez v1, :cond_0

    .line 107
    move-object v2, p2

    .line 108
    .local v2, "enumType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    new-instance v3, Lcom/thoughtworks/xstream/converters/enums/EnumSingleValueConverter;

    invoke-direct {v3, v2}, Lcom/thoughtworks/xstream/converters/enums/EnumSingleValueConverter;-><init>(Ljava/lang/Class;)V

    move-object v1, v3

    .line 110
    .end local v2    # "enumType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Enum;>;"
    :cond_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/EnumMapper;->enumConverterMap:Ljava/util/Map;

    invoke-interface {v2, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_1
    monitor-exit v0

    return-object v1

    .line 113
    .end local v1    # "singleValueConverter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 115
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/EnumMapper;->enumConverterMap:Ljava/util/Map;

    .line 128
    const-class v0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/mapper/EnumMapper;->lookupMapperOfType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/EnumMapper;->attributeMapper:Lcom/thoughtworks/xstream/mapper/AttributeMapper;

    .line 129
    return-object p0
.end method


# virtual methods
.method public flushCache()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/EnumMapper;->enumConverterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/EnumMapper;->enumConverterMap:Ljava/util/Map;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/EnumMapper;->enumConverterMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 122
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 124
    :cond_0
    :goto_0
    return-void
.end method

.method public getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 2
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/Class;

    .line 91
    invoke-direct {p0, p2, p3, p1}, Lcom/thoughtworks/xstream/mapper/EnumMapper;->getLocalConverter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    .line 92
    .local v0, "converter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    if-nez v0, :cond_0

    .line 93
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 92
    :goto_0
    return-object v1
.end method

.method public getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "definedIn"    # Ljava/lang/Class;

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/EnumMapper;->getLocalConverter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    .line 83
    .local v0, "converter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    if-nez v0, :cond_0

    .line 84
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 83
    :goto_0
    return-object v1
.end method

.method public isImmutableValueType(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 67
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isImmutableValueType(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isReferenceable(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 72
    if-eqz p1, :cond_0

    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x0

    return v0

    .line 75
    :cond_0
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->isReferenceable(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public serializedClass(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .line 53
    if-nez p1, :cond_0

    .line 54
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 56
    :cond_0
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Enum;

    if-eq v0, v1, :cond_1

    .line 57
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 58
    :cond_1
    const-class v0, Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    const-class v0, Ljava/util/EnumSet;

    invoke-super {p0, v0}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 61
    :cond_2
    invoke-super {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
