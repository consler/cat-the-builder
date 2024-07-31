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
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 53
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$java$util$TreeMap:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.TreeMap"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->class$java$util$TreeMap:Ljava/lang/Class;

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V

    .line 54
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 50
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
.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 57
    move-object v0, p1

    check-cast v0, Ljava/util/SortedMap;

    .line 58
    .local v0, "sortedMap":Ljava/util/SortedMap;
    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {p0, v1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->marshalComparator(Ljava/util/Comparator;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/MapConverter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 60
    return-void
.end method

.method protected marshalComparator(Ljava/util/Comparator;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 3
    .param p1, "comparator"    # Ljava/util/Comparator;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 64
    if-eqz p1, :cond_0

    .line 65
    const-string v0, "comparator"

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

    .line 71
    :cond_0
    return-void
.end method

.method protected populateTreeMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;Ljava/util/Comparator;)V
    .locals 5
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;
    .param p3, "result"    # Ljava/util/TreeMap;
    .param p4, "comparator"    # Ljava/util/Comparator;

    .line 106
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->NULL_MARKER:Ljava/util/Comparator;

    if-ne p4, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 107
    .local v0, "inFirstElement":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 108
    const/4 p4, 0x0

    .line 110
    :cond_1
    new-instance v1, Lcom/thoughtworks/xstream/core/util/PresortedMap;

    if-eqz p4, :cond_2

    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeMapPutAll()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, p4

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-direct {v1, v2}, Lcom/thoughtworks/xstream/core/util/PresortedMap;-><init>(Ljava/util/Comparator;)V

    .line 111
    .local v1, "sortedMap":Ljava/util/SortedMap;
    if-eqz v0, :cond_3

    .line 113
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->putCurrentEntryIntoMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;Ljava/util/Map;)V

    .line 114
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 116
    :cond_3
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->populateMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Map;Ljava/util/Map;)V

    .line 118
    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeMapPutAll()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 119
    if-eqz p4, :cond_4

    sget-object v2, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_4

    .line 120
    sget-object v2, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p3, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 122
    :cond_4
    invoke-virtual {p3, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    goto :goto_2

    .line 123
    :cond_5
    sget-object v2, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_6

    .line 124
    sget-object v2, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    invoke-interface {v1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v3

    invoke-virtual {v2, p3, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p3, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 126
    sget-object v2, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p3, p4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 128
    :cond_6
    invoke-virtual {p3, v1}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_2
    nop

    .line 133
    return-void

    .line 130
    :catch_0
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v4, "Cannot set comparator of TreeMap"

    invoke-direct {v3, v4, v2}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 3
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 74
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->comparatorField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 75
    .local v0, "result":Ljava/util/TreeMap;
    :goto_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->unmarshalComparator(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v1

    .line 76
    .local v1, "comparator":Ljava/util/Comparator;
    if-nez v0, :cond_3

    .line 77
    if-eqz v1, :cond_2

    sget-object v2, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->NULL_MARKER:Ljava/util/Comparator;

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    :goto_2
    move-object v0, v2

    .line 79
    :cond_3
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->populateTreeMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;Ljava/util/Comparator;)V

    .line 80
    return-object v0
.end method

.method protected unmarshalComparator(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;)Ljava/util/Comparator;
    .locals 2
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;
    .param p3, "result"    # Ljava/util/TreeMap;

    .line 86
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->hasMoreChildren()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 87
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveDown()V

    .line 88
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "comparator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/thoughtworks/xstream/core/util/HierarchicalStreams;->readClassType(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/mapper/Mapper;)Ljava/lang/Class;

    move-result-object v0

    .line 90
    .local v0, "comparatorClass":Ljava/lang/Class;
    invoke-interface {p2, p3, v0}, Lcom/thoughtworks/xstream/converters/UnmarshallingContext;->convertAnother(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/Comparator;

    .line 91
    .local v0, "comparator":Ljava/util/Comparator;
    goto :goto_0

    .end local v0    # "comparator":Ljava/util/Comparator;
    :cond_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no-comparator"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const/4 v0, 0x0

    .line 97
    .restart local v0    # "comparator":Ljava/util/Comparator;
    :goto_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    goto :goto_1

    .line 95
    .end local v0    # "comparator":Ljava/util/Comparator;
    :cond_1
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->NULL_MARKER:Ljava/util/Comparator;

    return-object v0

    .line 99
    :cond_2
    const/4 v0, 0x0

    .line 101
    .restart local v0    # "comparator":Ljava/util/Comparator;
    :goto_1
    return-object v0
.end method
