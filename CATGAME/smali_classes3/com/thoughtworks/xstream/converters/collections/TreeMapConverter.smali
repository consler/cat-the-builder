.class public Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;
.super Lcom/thoughtworks/xstream/converters/collections/MapConverter;
.source "TreeMapConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter$NullComparator;
    }
.end annotation


# static fields
.field private static final NULL_MARKER:Ljava/util/Comparator;

.field static synthetic class$java$util$Comparator:Ljava/lang/Class;

.field static synthetic class$java$util$TreeMap:Ljava/lang/Class;

.field private static final comparatorField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 49
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter$NullComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter$NullComparator;-><init>(Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter$1;)V

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->NULL_MARKER:Ljava/util/Comparator;

    .line 50
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$java$util$TreeMap:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.TreeMap"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$java$util$TreeMap:Ljava/lang/Class;

    :cond_0
    sget-object v1, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$java$util$Comparator:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "java.util.Comparator"

    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$java$util$Comparator:Ljava/lang/Class;

    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/thoughtworks/xstream/core/util/Fields;->locate(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1

    .line 53
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$java$util$TreeMap:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.TreeMap"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$java$util$TreeMap:Ljava/lang/Class;

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 50
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
.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 1

    .line 57
    move-object v0, p1

    check-cast v0, Ljava/util/SortedMap;

    .line 58
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->marshalComparator(Ljava/util/Comparator;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    return-void
.end method

.method protected marshalComparator(Ljava/util/Comparator;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "comparator"

    .line 65
    invoke-interface {p2, v0}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->startNode(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    const-string v1, "class"

    invoke-interface {v0, v1}, Lcom/thoughtworks/xstream/mapper/Mapper;->aliasForSystemAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 67
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/thoughtworks/xstream/mapper/Mapper;->serializedClass(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-interface {p2, v0, v1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-interface {p3, p1}, Lcom/thoughtworks/xstream/converters/MarshallingContext;->convertAnother(Ljava/lang/Object;)V

    .line 69
    invoke-interface {p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->endNode()V

    :cond_0
    return-void
.end method

.method protected populateTreeMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;Ljava/util/Comparator;)V
    .locals 4

    .line 106
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->NULL_MARKER:Ljava/util/Comparator;

    if-ne p4, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object p4, v1

    .line 110
    :cond_1
    new-instance v2, Lcom/thoughtworks/xstream/core/util/PresortedMap;

    if-eqz p4, :cond_2

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeMapPutAll()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, p4

    :cond_2
    invoke-direct {v2, v1}, Lcom/thoughtworks/xstream/core/util/PresortedMap;-><init>(Ljava/util/Comparator;)V

    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->putCurrentEntryIntoMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;Ljava/util/Map;)V

    .line 114
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 116
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->populateMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;Ljava/util/Map;)V

    .line 118
    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeMapPutAll()Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p4, :cond_4

    .line 119
    sget-object p1, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    if-eqz p1, :cond_4

    .line 120
    invoke-virtual {p1, p3, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    :cond_4
    invoke-virtual {p3, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 123
    :cond_5
    sget-object p1, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    if-eqz p1, :cond_6

    .line 124
    invoke-interface {v2}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p3, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 126
    invoke-virtual {p1, p3, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 128
    :cond_6
    invoke-virtual {p3, v2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :catch_0
    move-exception p1

    .line 131
    new-instance p2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string p3, "Cannot set comparator of TreeMap"

    invoke-direct {p2, p3, p1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 2

    .line 74
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->unmarshalComparator(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v1

    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    .line 77
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->NULL_MARKER:Ljava/util/Comparator;

    if-ne v1, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 79
    :cond_3
    :goto_2
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->populateTreeMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;Ljava/util/Comparator;)V

    return-object v0
.end method

.method protected unmarshalComparator(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;)Ljava/util/Comparator;
    .locals 3

    .line 86
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 87
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 88
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "comparator"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Class;

    move-result-object v0

    .line 90
    invoke-interface {p2, p3, v0}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Comparator;

    move-object v1, p2

    goto :goto_0

    .line 91
    :cond_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "no-comparator"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 97
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_1

    .line 95
    :cond_1
    sget-object p1, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->NULL_MARKER:Ljava/util/Comparator;

    return-object p1

    :cond_2
    :goto_1
    return-object v1
.end method
