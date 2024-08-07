.class public Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "EnumToStringConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Enum<",
        "TT;>;>",
        "Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;"
    }
.end annotation


# instance fields
.field private final enumType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final strings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final values:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;, "Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;->extractStringMap(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;-><init>(Ljava/lang/Class;Ljava/util/Map;Ljava/util/EnumMap;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;, "Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "strings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    invoke-static {p1, p2}, Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;->buildValueMap(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/EnumMap;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;-><init>(Ljava/lang/Class;Ljava/util/Map;Ljava/util/EnumMap;)V

    .line 41
    return-void
.end method

.method private constructor <init>(Ljava/lang/Class;Ljava/util/Map;Ljava/util/EnumMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;",
            "Ljava/util/EnumMap<",
            "TT;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;, "Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter<TT;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "strings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    .local p3, "values":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TT;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;->enumType:Ljava/lang/Class;

    .line 46
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;->strings:Ljava/util/Map;

    .line 47
    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;->values:Ljava/util/EnumMap;

    .line 48
    return-void
.end method

.method private static buildValueMap(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/EnumMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)",
            "Ljava/util/EnumMap<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 72
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "strings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    new-instance v0, Ljava/util/EnumMap;

    invoke-direct {v0, p0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 73
    .local v0, "values":Ljava/util/EnumMap;, "Ljava/util/EnumMap<TT;Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 74
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;TT;>;"
    goto :goto_0

    .line 76
    :cond_0
    return-object v0
.end method

.method private static checkType(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 65
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    const-class v0, Ljava/lang/Enum;

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/InitializationException;

    const-string v1, "Converter can only handle enum types"

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    :goto_0
    return-void
.end method

.method private static extractStringMap(Ljava/lang/Class;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Enum<",
            "TT;>;>(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 51
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;->checkType(Ljava/lang/Class;)V

    .line 52
    invoke-static {p0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 53
    .local v0, "values":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TT;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 54
    .local v1, "strings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;TT;>;"
    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Enum;

    .line 55
    .local v3, "value":Ljava/lang/Enum;, "TT;"
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 60
    .end local v3    # "value":Ljava/lang/Enum;, "TT;"
    goto :goto_0

    .line 56
    .restart local v3    # "value":Ljava/lang/Enum;, "TT;"
    :cond_0
    new-instance v2, Lcom/thoughtworks/xstream/InitializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Enum type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " does not have unique string representations for its values"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/thoughtworks/xstream/InitializationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 61
    .end local v3    # "value":Ljava/lang/Enum;, "TT;"
    :cond_1
    return-object v1
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 81
    .local p0, "this":Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;, "Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter<TT;>;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;->enumType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 92
    .local p0, "this":Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;, "Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter<TT;>;"
    if-nez p1, :cond_0

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;->strings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 96
    .local v0, "result":Ljava/lang/Enum;, "TT;"
    if-eqz v0, :cond_1

    .line 102
    return-object v0

    .line 97
    :cond_1
    new-instance v1, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Invalid string representation for enum type"

    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 98
    .local v1, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;->enumType:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "enum-type"

    invoke-virtual {v1, v3, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    const-string v2, "enum-string"

    invoke-virtual {v1, v2, p1}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    throw v1
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 86
    .local p0, "this":Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;, "Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter<TT;>;"
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    .line 87
    .local v0, "value":Ljava/lang/Enum;
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/enums/EnumToStringConverter;->values:Ljava/util/EnumMap;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    return-object v1
.end method
