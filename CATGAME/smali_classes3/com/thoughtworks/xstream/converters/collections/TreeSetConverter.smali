.class public Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;
.super Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;
.source "TreeSetConverter.java"


# static fields
.field static synthetic class$java$lang$Object:Ljava/lang/Class;

.field static synthetic class$java$util$SortedMap:Ljava/lang/Class;

.field static synthetic class$java$util$TreeSet:Ljava/lang/Class;

.field private static final constantValue:Ljava/lang/Object;

.field private static final sortedMapField:Ljava/lang/reflect/Field;


# instance fields
.field private transient treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "value":Ljava/lang/Object;
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeSetAddAll()Z

    move-result v1

    const-string v2, "java.util.TreeSet"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$TreeSet:Ljava/lang/Class;

    if-nez v1, :cond_0

    invoke-static {v2}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$TreeSet:Ljava/lang/Class;

    :cond_0
    sget-object v5, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$SortedMap:Ljava/lang/Class;

    if-nez v5, :cond_1

    const-string v5, "java.util.SortedMap"

    invoke-static {v5}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$SortedMap:Ljava/lang/Class;

    :cond_1
    invoke-static {v1, v5, v4}, Lcom/thoughtworks/xstream/core/util/Fields;->locate(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    sput-object v1, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->sortedMapField:Ljava/lang/reflect/Field;

    .line 49
    const/4 v5, 0x1

    if-eqz v1, :cond_4

    .line 50
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 51
    .local v1, "set":Ljava/util/TreeSet;
    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 54
    const/4 v2, 0x0

    .line 56
    .local v2, "backingMap":Ljava/util/Map;
    :try_start_0
    sget-object v3, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->sortedMapField:Ljava/lang/reflect/Field;

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 59
    goto :goto_1

    .line 57
    :catch_0
    move-exception v3

    .line 60
    :goto_1
    if-eqz v2, :cond_3

    .line 61
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 62
    .local v3, "values":[Ljava/lang/Object;
    aget-object v6, v3, v4

    aget-object v5, v3, v5

    if-ne v6, v5, :cond_3

    .line 63
    aget-object v0, v3, v4

    .line 66
    .end local v1    # "set":Ljava/util/TreeSet;
    .end local v2    # "backingMap":Ljava/util/Map;
    .end local v3    # "values":[Ljava/lang/Object;
    :cond_3
    goto :goto_2

    .line 67
    :cond_4
    sget-object v1, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$TreeSet:Ljava/lang/Class;

    if-nez v1, :cond_5

    invoke-static {v2}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$TreeSet:Ljava/lang/Class;

    :cond_5
    sget-object v2, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v2, :cond_6

    const-string v2, "java.lang.Object"

    invoke-static {v2}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$lang$Object:Ljava/lang/Class;

    :cond_6
    invoke-static {v1, v2, v5}, Lcom/thoughtworks/xstream/core/util/Fields;->locate(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 68
    .local v1, "valueField":Ljava/lang/reflect/Field;
    if-eqz v1, :cond_7

    .line 70
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 73
    goto :goto_2

    .line 71
    :catch_1
    move-exception v2

    .line 76
    .end local v1    # "valueField":Ljava/lang/reflect/Field;
    :cond_7
    :goto_2
    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->constantValue:Ljava/lang/Object;

    .line 77
    .end local v0    # "value":Ljava/lang/Object;
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;

    .line 80
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$TreeSet:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.TreeSet"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$TreeSet:Ljava/lang/Class;

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Ljava/lang/Class;)V

    .line 81
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->readResolve()Ljava/lang/Object;

    .line 82
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 42
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->constantValue:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 48
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

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 132
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;-><init>(Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    .line 157
    return-object p0
.end method


# virtual methods
.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;
    .param p3, "context"    # Lcom/thoughtworks/xstream/converters/MarshallingContext;

    .line 85
    move-object v0, p1

    check-cast v0, Ljava/util/SortedSet;

    .line 86
    .local v0, "sortedSet":Ljava/util/SortedSet;
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->marshalComparator(Ljava/util/Comparator;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 88
    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 9
    .param p1, "reader"    # Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;
    .param p2, "context"    # Lcom/thoughtworks/xstream/converters/UnmarshallingContext;

    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, "result":Ljava/util/TreeSet;
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->unmarshalComparator(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v1

    .line 94
    .local v1, "unmarshalledComparator":Ljava/util/Comparator;
    instance-of v3, v1, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    .line 95
    .local v3, "inFirstElement":Z
    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 96
    .local v2, "comparator":Ljava/util/Comparator;
    :goto_0
    sget-object v4, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->sortedMapField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_3

    .line 97
    new-instance v4, Ljava/util/TreeSet;

    if-nez v2, :cond_1

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    goto :goto_1

    :cond_1
    invoke-direct {v4, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 98
    .local v4, "possibleResult":Ljava/util/TreeSet;
    :goto_1
    const/4 v5, 0x0

    .line 100
    .local v5, "backingMap":Ljava/lang/Object;
    :try_start_0
    sget-object v6, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->sortedMapField:Ljava/lang/reflect/Field;

    invoke-virtual {v6, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    .line 103
    nop

    .line 104
    instance-of v6, v5, Ljava/util/TreeMap;

    if-eqz v6, :cond_2

    .line 105
    move-object v6, v5

    check-cast v6, Ljava/util/TreeMap;

    .line 106
    .local v6, "treeMap":Ljava/util/TreeMap;
    move-object v0, v4

    goto :goto_2

    .line 108
    .end local v6    # "treeMap":Ljava/util/TreeMap;
    :cond_2
    const/4 v6, 0x0

    .line 110
    .end local v4    # "possibleResult":Ljava/util/TreeSet;
    .end local v5    # "backingMap":Ljava/lang/Object;
    .restart local v6    # "treeMap":Ljava/util/TreeMap;
    :goto_2
    goto :goto_3

    .line 101
    .end local v6    # "treeMap":Ljava/util/TreeMap;
    .restart local v4    # "possibleResult":Ljava/util/TreeSet;
    .restart local v5    # "backingMap":Ljava/lang/Object;
    :catch_0
    move-exception v6

    .line 102
    .local v6, "e":Ljava/lang/IllegalAccessException;
    new-instance v7, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v8, "Cannot get backing map of TreeSet"

    invoke-direct {v7, v8, v6}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 111
    .end local v4    # "possibleResult":Ljava/util/TreeSet;
    .end local v5    # "backingMap":Ljava/lang/Object;
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :cond_3
    const/4 v6, 0x0

    .line 113
    .local v6, "treeMap":Ljava/util/TreeMap;
    :goto_3
    if-nez v6, :cond_7

    .line 114
    new-instance v4, Lcom/thoughtworks/xstream/core/util/PresortedSet;

    invoke-direct {v4, v2}, Lcom/thoughtworks/xstream/core/util/PresortedSet;-><init>(Ljava/util/Comparator;)V

    .line 115
    .local v4, "set":Lcom/thoughtworks/xstream/core/util/PresortedSet;
    new-instance v5, Ljava/util/TreeSet;

    if-nez v2, :cond_4

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    goto :goto_4

    :cond_4
    invoke-direct {v5, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :goto_4
    move-object v0, v5

    .line 116
    if-eqz v3, :cond_5

    .line 118
    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->addCurrentElementToCollection(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 119
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 121
    :cond_5
    invoke-virtual {p0, p1, p2, v0, v4}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->populateCollection(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 122
    invoke-virtual {v4}, Lcom/thoughtworks/xstream/core/util/PresortedSet;->size()I

    move-result v5

    if-lez v5, :cond_6

    .line 123
    invoke-virtual {v0, v4}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 125
    .end local v4    # "set":Lcom/thoughtworks/xstream/core/util/PresortedSet;
    :cond_6
    goto :goto_5

    .line 126
    :cond_7
    iget-object v4, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    invoke-virtual {v4, p1, p2, v6, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->populateTreeMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;Ljava/util/Comparator;)V

    .line 128
    :goto_5
    return-object v0
.end method
