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
    .locals 6

    .line 48
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->hasOptimizedTreeSetAddAll()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "java.util.TreeSet"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$TreeSet:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-static {v2}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$TreeSet:Ljava/lang/Class;

    :cond_0
    sget-object v4, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$SortedMap:Ljava/lang/Class;

    if-nez v4, :cond_1

    const-string v4, "java.util.SortedMap"

    invoke-static {v4}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$SortedMap:Ljava/lang/Class;

    :cond_1
    invoke-static {v0, v4, v1}, Lcom/thoughtworks/xstream/core/util/Fields;->locate(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->sortedMapField:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 50
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    const-string v5, "1"

    .line 51
    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    const-string v5, "2"

    .line 52
    invoke-virtual {v2, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 56
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_6

    .line 61
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 62
    aget-object v1, v0, v1

    aget-object v0, v0, v4

    if-ne v1, v0, :cond_6

    move-object v3, v1

    goto :goto_2

    .line 67
    :cond_3
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$TreeSet:Ljava/lang/Class;

    if-nez v0, :cond_4

    invoke-static {v2}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$util$TreeSet:Ljava/lang/Class;

    :cond_4
    sget-object v1, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$lang$Object:Ljava/lang/Class;

    if-nez v1, :cond_5

    const-string v1, "java.lang.Object"

    invoke-static {v1}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->class$java$lang$Object:Ljava/lang/Class;

    :cond_5
    invoke-static {v0, v1, v4}, Lcom/thoughtworks/xstream/core/util/Fields;->locate(Ljava/lang/Class;Ljava/lang/Class;Z)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 70
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    :catch_1
    :cond_6
    :goto_2
    sput-object v3, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->constantValue:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;)V
    .locals 1

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

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 42
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->constantValue:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 48
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

.method private readResolve()Ljava/lang/Object;
    .locals 2

    .line 132
    new-instance v0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->mapper()Lcom/thoughtworks/xstream/mapper/Mapper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter$1;-><init>(Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;Lcom/thoughtworks/xstream/mapper/Mapper;)V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    return-object p0
.end method


# virtual methods
.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 2

    .line 85
    move-object v0, p1

    check-cast v0, Ljava/util/SortedSet;

    .line 86
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    invoke-interface {v0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {v1, v0, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->marshalComparator(Ljava/util/Comparator;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/thoughtworks/xstream/converters/collections/CollectionConverter;->marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V

    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 8

    .line 93
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->unmarshalComparator(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;)Ljava/util/Comparator;

    move-result-object v0

    .line 94
    instance-of v2, v0, Lcom/thoughtworks/xstream/mapper/Mapper$Null;

    if-eqz v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    move-object v3, v0

    .line 96
    :goto_0
    sget-object v4, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->sortedMapField:Ljava/lang/reflect/Field;

    if-eqz v4, :cond_3

    .line 97
    new-instance v5, Ljava/util/TreeSet;

    if-nez v3, :cond_1

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    goto :goto_1

    :cond_1
    invoke-direct {v5, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 100
    :goto_1
    :try_start_0
    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    instance-of v6, v4, Ljava/util/TreeMap;

    if-eqz v6, :cond_2

    .line 105
    check-cast v4, Ljava/util/TreeMap;

    move-object v1, v5

    goto :goto_2

    :cond_2
    move-object v4, v1

    :goto_2
    move-object v7, v4

    move-object v4, v1

    move-object v1, v7

    goto :goto_3

    :catch_0
    move-exception p1

    .line 102
    new-instance p2, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;

    const-string v0, "Cannot get backing map of TreeSet"

    invoke-direct {p2, v0, p1}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    move-object v4, v1

    :goto_3
    if-nez v1, :cond_6

    .line 114
    new-instance v0, Lcom/thoughtworks/xstream/core/util/PresortedSet;

    invoke-direct {v0, v3}, Lcom/thoughtworks/xstream/core/util/PresortedSet;-><init>(Ljava/util/Comparator;)V

    .line 115
    new-instance v1, Ljava/util/TreeSet;

    if-nez v3, :cond_4

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    goto :goto_4

    :cond_4
    invoke-direct {v1, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    :goto_4
    move-object v4, v1

    if-eqz v2, :cond_5

    .line 118
    invoke-virtual {p0, p1, p2, v4, v0}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->addCurrentElementToCollection(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 119
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->moveUp()V

    .line 121
    :cond_5
    invoke-virtual {p0, p1, p2, v4, v0}, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->populateCollection(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/Collection;Ljava/util/Collection;)V

    .line 122
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/PresortedSet;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 123
    invoke-virtual {v4, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 126
    :cond_6
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/collections/TreeSetConverter;->treeMapConverter:Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;

    invoke-virtual {v2, p1, p2, v1, v0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;->populateTreeMap(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;Ljava/util/TreeMap;Ljava/util/Comparator;)V

    :cond_7
    :goto_5
    return-object v4
.end method
