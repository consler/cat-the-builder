.class public Lcom/thoughtworks/xstream/mapper/AttributeMapper;
.super Lcom/thoughtworks/xstream/mapper/MapperWrapper;
.source "AttributeMapper.java"


# instance fields
.field private converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

.field private final fieldNameToTypeMap:Ljava/util/Map;

.field private final fieldToUseAsAttribute:Ljava/util/Set;

.field private reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

.field private final typeSet:Ljava/util/Set;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/ConverterLookup;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V
    .locals 1
    .param p1, "wrapped"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "converterLookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;
    .param p3, "refProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .line 53
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->fieldNameToTypeMap:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->typeSet:Ljava/util/Set;

    .line 43
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->fieldToUseAsAttribute:Ljava/util/Set;

    .line 54
    iput-object p2, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .line 55
    iput-object p3, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .line 56
    return-void
.end method

.method private getLocalConverterFromItemType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;

    .line 74
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    invoke-interface {v0, p1}, Lcom/thoughtworks/xstream/converters/ConverterLookup;->lookupConverterForType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/Converter;

    move-result-object v0

    .line 75
    .local v0, "converter":Lcom/thoughtworks/xstream/converters/Converter;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    if-eqz v1, :cond_0

    .line 76
    move-object v1, v0

    check-cast v1, Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    return-object v1

    .line 78
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public addAttributeFor(Ljava/lang/Class;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 70
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->typeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public addAttributeFor(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "fieldName"    # Ljava/lang/String;

    .line 177
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->addAttributeFor(Ljava/lang/reflect/Field;)V

    .line 178
    return-void
.end method

.method public addAttributeFor(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .line 66
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->fieldNameToTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method

.method public addAttributeFor(Ljava/lang/reflect/Field;)V
    .locals 1
    .param p1, "field"    # Ljava/lang/reflect/Field;

    .line 164
    if-eqz p1, :cond_0

    .line 165
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->fieldToUseAsAttribute:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_0
    return-void
.end method

.method public getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 2
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "attribute"    # Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 144
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1
    .param p1, "definedIn"    # Ljava/lang/Class;
    .param p2, "attribute"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/Class;

    .line 148
    invoke-virtual {p0, p2, p3, p1}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->shouldLookForSingleValueConverter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-direct {p0, p3}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->getLocalConverterFromItemType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    .line 150
    .local v0, "converter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    if-eqz v0, :cond_0

    .line 151
    return-object v0

    .line 154
    .end local v0    # "converter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromAttribute(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    return-object v0
.end method

.method public getConverterFromAttribute(Ljava/lang/String;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 2
    .param p1, "attributeName"    # Ljava/lang/String;

    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "converter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    iget-object v1, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->fieldNameToTypeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 133
    .local v1, "type":Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 134
    invoke-direct {p0, v1}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->getLocalConverterFromItemType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    .line 136
    :cond_0
    return-object v0
.end method

.method public getConverterFromItemType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 120
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->typeSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->getLocalConverterFromItemType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    return-object v0

    .line 123
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;

    .line 86
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->fieldNameToTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    .line 87
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->getLocalConverterFromItemType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    return-object v0

    .line 89
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "definedIn"    # Ljava/lang/Class;

    .line 95
    invoke-virtual {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->shouldLookForSingleValueConverter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->getLocalConverterFromItemType(Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    .line 97
    .local v0, "converter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    if-eqz v0, :cond_0

    .line 98
    return-object v0

    .line 101
    .end local v0    # "converter":Lcom/thoughtworks/xstream/converters/SingleValueConverter;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/mapper/MapperWrapper;->getConverterFromItemType(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Lcom/thoughtworks/xstream/converters/SingleValueConverter;

    move-result-object v0

    return-object v0
.end method

.method public setConverterLookup(Lcom/thoughtworks/xstream/converters/ConverterLookup;)V
    .locals 0
    .param p1, "converterLookup"    # Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .line 62
    iput-object p1, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->converterLookup:Lcom/thoughtworks/xstream/converters/ConverterLookup;

    .line 63
    return-void
.end method

.method public shouldLookForSingleValueConverter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "definedIn"    # Ljava/lang/Class;

    .line 105
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->typeSet:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 106
    return v1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->fieldNameToTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_1

    .line 108
    return v1

    .line 109
    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    .line 110
    iget-object v2, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    invoke-interface {v2, p3, p1}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getFieldOrNull(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 111
    .local v2, "field":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/thoughtworks/xstream/mapper/AttributeMapper;->fieldToUseAsAttribute:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    return v1

    .line 113
    .end local v2    # "field":Ljava/lang/reflect/Field;
    :cond_3
    return v0
.end method
