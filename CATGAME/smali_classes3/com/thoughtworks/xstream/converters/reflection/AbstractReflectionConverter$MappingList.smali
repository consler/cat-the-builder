.class Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;
.super Ljava/util/AbstractList;
.source "AbstractReflectionConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MappingList"
.end annotation


# instance fields
.field private final fieldCache:Ljava/util/Map;

.field private final keyFieldName:Ljava/lang/String;

.field private final map:Ljava/util/Map;

.field private final synthetic this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;Ljava/util/Map;Ljava/lang/String;)V
    .locals 0
    .param p2, "map"    # Ljava/util/Map;
    .param p3, "keyFieldName"    # Ljava/lang/String;

    .line 695
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 693
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;->fieldCache:Ljava/util/Map;

    .line 696
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;->map:Ljava/util/Map;

    .line 697
    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;->keyFieldName:Ljava/lang/String;

    .line 698
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .line 701
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 702
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;->map:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    .line 703
    .local v0, "containsNull":Z
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;->map:Ljava/util/Map;

    invoke-interface {v1, v2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    return v0

    .line 706
    .end local v0    # "containsNull":Z
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 708
    .local v1, "itemType":Ljava/lang/Class;
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;->keyFieldName:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    .line 709
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;->fieldCache:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    .line 710
    .local v2, "field":Ljava/lang/reflect/Field;
    if-nez v2, :cond_1

    .line 711
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;->this$0:Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;

    iget-object v4, v4, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter;->reflectionProvider:Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;->keyFieldName:Ljava/lang/String;

    invoke-interface {v4, v1, v5}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 712
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;->fieldCache:Ljava/util/Map;

    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 714
    :cond_1
    if-eqz v2, :cond_3

    .line 715
    invoke-static {v2, p1}, Lcom/thoughtworks/xstream/core/util/Fields;->read(Ljava/lang/reflect/Field;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 716
    .local v4, "key":Ljava/lang/Object;
    iget-object v5, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;->map:Ljava/util/Map;

    invoke-interface {v5, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_0
    return v0

    .line 714
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "key":Ljava/lang/Object;
    :cond_3
    goto :goto_2

    .line 718
    :cond_4
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_6

    .line 719
    move-object v2, p1

    check-cast v2, Ljava/util/Map$Entry;

    .line 720
    .local v2, "entry":Ljava/util/Map$Entry;
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;->map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    move v0, v3

    :goto_1
    return v0

    .line 718
    .end local v2    # "entry":Ljava/util/Map$Entry;
    :cond_6
    :goto_2
    nop

    .line 723
    new-instance v0, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v2, "Element  is not defined as entry for implicit map"

    invoke-direct {v0, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 725
    .local v0, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;->map:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "map-type"

    invoke-virtual {v0, v3, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "element-type"

    invoke-virtual {v0, v3, v2}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I

    .line 731
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/AbstractReflectionConverter$MappingList;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
