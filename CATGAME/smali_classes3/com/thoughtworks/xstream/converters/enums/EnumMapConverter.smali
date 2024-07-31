.class public Lcom/thoughtworks/xstream/converters/enums/EnumMapConverter;
.super Lcom/thoughtworks/xstream/converters/collections/MapConverter;
.source "EnumMapConverter.java"


# static fields
.field private static final typeField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 40
    const-class v0, Ljava/util/EnumMap;

    const-class v1, Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/thoughtworks/xstream/core/util/Fields;->locate(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/enums/EnumMapConverter;->typeField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 0
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 43
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V

    .line 44
    return-void
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 47
    sget-object v0, Lcom/thoughtworks/xstream/converters/enums/EnumMapConverter;->typeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    const-class v0, Ljava/util/EnumMap;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 51
    sget-object v0, Lcom/thoughtworks/xstream/converters/enums/EnumMapConverter;->typeField:Ljava/lang/reflect/Field;

    invoke-static {v0, p1}, Lcom/thoughtworks/xstream/core/util/Fields;->read(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 52
    .local v0, "type":Ljava/lang/Class;
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/enums/EnumMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    const-string v2, "enum-type"

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "attributeName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/enums/EnumMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 57
    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 61
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/enums/EnumMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    const-string v1, "enum-type"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "attributeName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/enums/EnumMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    invoke-interface {p1, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->realClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 66
    .local v1, "type":Ljava/lang/Class;
    new-instance v2, Ljava/util/EnumMap;

    invoke-direct {v2, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 67
    .local v2, "map":Ljava/util/EnumMap;
    invoke-virtual {p0, p1, p2, v2}, Lcom/thoughtworks/xstream/converters/enums/EnumMapConverter;->populateMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;)V

    .line 68
    return-object v2

    .line 63
    .end local v1    # "type":Ljava/lang/Class;
    .end local v2    # "map":Ljava/util/EnumMap;
    :cond_0
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "No EnumType specified for EnumMap"

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
