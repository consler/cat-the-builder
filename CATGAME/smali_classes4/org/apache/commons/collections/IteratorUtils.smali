.class public Lorg/apache/commons/collections/IteratorUtils;
.super Ljava/lang/Object;
.source "IteratorUtils.java"


# static fields
.field public static final EMPTY_ITERATOR:Lorg/apache/commons/collections/ResettableIterator;

.field public static final EMPTY_LIST_ITERATOR:Lorg/apache/commons/collections/ResettableListIterator;

.field public static final EMPTY_MAP_ITERATOR:Lorg/apache/commons/collections/MapIterator;

.field public static final EMPTY_ORDERED_ITERATOR:Lorg/apache/commons/collections/OrderedIterator;

.field public static final EMPTY_ORDERED_MAP_ITERATOR:Lorg/apache/commons/collections/OrderedMapIterator;

.field static synthetic class$java$util$Iterator:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 84
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyIterator;->RESETTABLE_INSTANCE:Lorg/apache/commons/collections/ResettableIterator;

    sput-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_ITERATOR:Lorg/apache/commons/collections/ResettableIterator;

    .line 91
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyListIterator;->RESETTABLE_INSTANCE:Lorg/apache/commons/collections/ResettableListIterator;

    sput-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_LIST_ITERATOR:Lorg/apache/commons/collections/ResettableListIterator;

    .line 95
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedIterator;

    sput-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_ORDERED_ITERATOR:Lorg/apache/commons/collections/OrderedIterator;

    .line 99
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyMapIterator;->INSTANCE:Lorg/apache/commons/collections/MapIterator;

    sput-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_MAP_ITERATOR:Lorg/apache/commons/collections/MapIterator;

    .line 103
    sget-object v0, Lorg/apache/commons/collections/iterators/EmptyOrderedMapIterator;->INSTANCE:Lorg/apache/commons/collections/OrderedMapIterator;

    sput-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_ORDERED_MAP_ITERATOR:Lorg/apache/commons/collections/OrderedMapIterator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static arrayIterator(Ljava/lang/Object;)Lorg/apache/commons/collections/ResettableIterator;
    .locals 1

    .line 238
    new-instance v0, Lorg/apache/commons/collections/iterators/ArrayIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayIterator(Ljava/lang/Object;I)Lorg/apache/commons/collections/ResettableIterator;
    .locals 1

    .line 273
    new-instance v0, Lorg/apache/commons/collections/iterators/ArrayIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static arrayIterator(Ljava/lang/Object;II)Lorg/apache/commons/collections/ResettableIterator;
    .locals 1

    .line 310
    new-instance v0, Lorg/apache/commons/collections/iterators/ArrayIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>(Ljava/lang/Object;II)V

    return-object v0
.end method

.method public static arrayIterator([Ljava/lang/Object;)Lorg/apache/commons/collections/ResettableIterator;
    .locals 1

    .line 223
    new-instance v0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayIterator([Ljava/lang/Object;I)Lorg/apache/commons/collections/ResettableIterator;
    .locals 1

    .line 255
    new-instance v0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static arrayIterator([Ljava/lang/Object;II)Lorg/apache/commons/collections/ResettableIterator;
    .locals 1

    .line 291
    new-instance v0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public static arrayListIterator(Ljava/lang/Object;)Lorg/apache/commons/collections/ResettableListIterator;
    .locals 1

    .line 337
    new-instance v0, Lorg/apache/commons/collections/iterators/ArrayListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/ArrayListIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayListIterator(Ljava/lang/Object;I)Lorg/apache/commons/collections/ResettableListIterator;
    .locals 1

    .line 367
    new-instance v0, Lorg/apache/commons/collections/iterators/ArrayListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/ArrayListIterator;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static arrayListIterator(Ljava/lang/Object;II)Lorg/apache/commons/collections/ResettableListIterator;
    .locals 1

    .line 401
    new-instance v0, Lorg/apache/commons/collections/iterators/ArrayListIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/iterators/ArrayListIterator;-><init>(Ljava/lang/Object;II)V

    return-object v0
.end method

.method public static arrayListIterator([Ljava/lang/Object;)Lorg/apache/commons/collections/ResettableListIterator;
    .locals 1

    .line 322
    new-instance v0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public static arrayListIterator([Ljava/lang/Object;I)Lorg/apache/commons/collections/ResettableListIterator;
    .locals 1

    .line 350
    new-instance v0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static arrayListIterator([Ljava/lang/Object;II)Lorg/apache/commons/collections/ResettableListIterator;
    .locals 1

    .line 382
    new-instance v0, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/iterators/ObjectArrayListIterator;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public static asEnumeration(Ljava/util/Iterator;)Ljava/util/Enumeration;
    .locals 1

    if-eqz p0, :cond_0

    .line 752
    new-instance v0, Lorg/apache/commons/collections/iterators/IteratorEnumeration;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/IteratorEnumeration;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 750
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static asIterator(Ljava/util/Enumeration;)Ljava/util/Iterator;
    .locals 1

    if-eqz p0, :cond_0

    .line 720
    new-instance v0, Lorg/apache/commons/collections/iterators/EnumerationIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/EnumerationIterator;-><init>(Ljava/util/Enumeration;)V

    return-object v0

    .line 718
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Enumeration must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static asIterator(Ljava/util/Enumeration;Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 738
    new-instance v0, Lorg/apache/commons/collections/iterators/EnumerationIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/EnumerationIterator;-><init>(Ljava/util/Enumeration;Ljava/util/Collection;)V

    return-object v0

    .line 736
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Collection must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 733
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Enumeration must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static chainedIterator(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1

    .line 480
    new-instance v0, Lorg/apache/commons/collections/iterators/IteratorChain;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/IteratorChain;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static chainedIterator(Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1

    .line 455
    new-instance v0, Lorg/apache/commons/collections/iterators/IteratorChain;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/IteratorChain;-><init>(Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static chainedIterator([Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1

    .line 467
    new-instance v0, Lorg/apache/commons/collections/iterators/IteratorChain;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/IteratorChain;-><init>([Ljava/util/Iterator;)V

    return-object v0
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 901
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static collatedIterator(Ljava/util/Comparator;Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1

    .line 541
    new-instance v0, Lorg/apache/commons/collections/iterators/CollatingIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;Ljava/util/Collection;)V

    return-object v0
.end method

.method public static collatedIterator(Ljava/util/Comparator;Ljava/util/Iterator;Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1

    .line 502
    new-instance v0, Lorg/apache/commons/collections/iterators/CollatingIterator;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static collatedIterator(Ljava/util/Comparator;[Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1

    .line 521
    new-instance v0, Lorg/apache/commons/collections/iterators/CollatingIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;[Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static emptyIterator()Lorg/apache/commons/collections/ResettableIterator;
    .locals 1

    .line 125
    sget-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_ITERATOR:Lorg/apache/commons/collections/ResettableIterator;

    return-object v0
.end method

.method public static emptyListIterator()Lorg/apache/commons/collections/ResettableListIterator;
    .locals 1

    .line 140
    sget-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_LIST_ITERATOR:Lorg/apache/commons/collections/ResettableListIterator;

    return-object v0
.end method

.method public static emptyMapIterator()Lorg/apache/commons/collections/MapIterator;
    .locals 1

    .line 164
    sget-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_MAP_ITERATOR:Lorg/apache/commons/collections/MapIterator;

    return-object v0
.end method

.method public static emptyOrderedIterator()Lorg/apache/commons/collections/OrderedIterator;
    .locals 1

    .line 152
    sget-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_ORDERED_ITERATOR:Lorg/apache/commons/collections/OrderedIterator;

    return-object v0
.end method

.method public static emptyOrderedMapIterator()Lorg/apache/commons/collections/OrderedMapIterator;
    .locals 1

    .line 176
    sget-object v0, Lorg/apache/commons/collections/IteratorUtils;->EMPTY_ORDERED_MAP_ITERATOR:Lorg/apache/commons/collections/OrderedMapIterator;

    return-object v0
.end method

.method public static filteredIterator(Ljava/util/Iterator;Lorg/apache/commons/collections/Predicate;)Ljava/util/Iterator;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 646
    new-instance v0, Lorg/apache/commons/collections/iterators/FilterIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/FilterIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections/Predicate;)V

    return-object v0

    .line 644
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Predicate must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 641
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Iterator must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static filteredListIterator(Ljava/util/ListIterator;Lorg/apache/commons/collections/Predicate;)Ljava/util/ListIterator;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 667
    new-instance v0, Lorg/apache/commons/collections/iterators/FilterListIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/FilterListIterator;-><init>(Ljava/util/ListIterator;Lorg/apache/commons/collections/Predicate;)V

    return-object v0

    .line 665
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Predicate must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 662
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "ListIterator must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getIterator(Ljava/lang/Object;)Ljava/util/Iterator;
    .locals 4

    if-nez p0, :cond_0

    .line 875
    invoke-static {}, Lorg/apache/commons/collections/IteratorUtils;->emptyIterator()Lorg/apache/commons/collections/ResettableIterator;

    move-result-object p0

    return-object p0

    .line 877
    :cond_0
    instance-of v0, p0, Ljava/util/Iterator;

    if-eqz v0, :cond_1

    .line 878
    check-cast p0, Ljava/util/Iterator;

    return-object p0

    .line 880
    :cond_1
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 881
    check-cast p0, Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    .line 883
    :cond_2
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 884
    new-instance v0, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;

    check-cast p0, [Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/ObjectArrayIterator;-><init>([Ljava/lang/Object;)V

    return-object v0

    .line 886
    :cond_3
    instance-of v0, p0, Ljava/util/Enumeration;

    if-eqz v0, :cond_4

    .line 887
    new-instance v0, Lorg/apache/commons/collections/iterators/EnumerationIterator;

    check-cast p0, Ljava/util/Enumeration;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/EnumerationIterator;-><init>(Ljava/util/Enumeration;)V

    return-object v0

    .line 889
    :cond_4
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 890
    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    .line 892
    :cond_5
    instance-of v0, p0, Ljava/util/Dictionary;

    if-eqz v0, :cond_6

    .line 893
    new-instance v0, Lorg/apache/commons/collections/iterators/EnumerationIterator;

    check-cast p0, Ljava/util/Dictionary;

    invoke-virtual {p0}, Ljava/util/Dictionary;->elements()Ljava/util/Enumeration;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/EnumerationIterator;-><init>(Ljava/util/Enumeration;)V

    return-object v0

    :cond_6
    if-eqz p0, :cond_7

    .line 895
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 896
    new-instance v0, Lorg/apache/commons/collections/iterators/ArrayIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/ArrayIterator;-><init>(Ljava/lang/Object;)V

    return-object v0

    .line 900
    :cond_7
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "iterator"

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 901
    sget-object v1, Lorg/apache/commons/collections/IteratorUtils;->class$java$util$Iterator:Ljava/lang/Class;

    if-nez v1, :cond_8

    const-string v1, "java.util.Iterator"

    invoke-static {v1}, Lorg/apache/commons/collections/IteratorUtils;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/commons/collections/IteratorUtils;->class$java$util$Iterator:Ljava/lang/Class;

    :cond_8
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 902
    move-object v1, v2

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Iterator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_9

    return-object v0

    .line 910
    :catch_0
    :cond_9
    invoke-static {p0}, Lorg/apache/commons/collections/IteratorUtils;->singletonIterator(Ljava/lang/Object;)Lorg/apache/commons/collections/ResettableIterator;

    move-result-object p0

    return-object p0
.end method

.method public static loopingIterator(Ljava/util/Collection;)Lorg/apache/commons/collections/ResettableIterator;
    .locals 1

    if-eqz p0, :cond_0

    .line 687
    new-instance v0, Lorg/apache/commons/collections/iterators/LoopingIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/LoopingIterator;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 685
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Collection must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static loopingListIterator(Ljava/util/List;)Lorg/apache/commons/collections/ResettableListIterator;
    .locals 1

    if-eqz p0, :cond_0

    .line 705
    new-instance v0, Lorg/apache/commons/collections/iterators/LoopingListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/LoopingListIterator;-><init>(Ljava/util/List;)V

    return-object v0

    .line 703
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "List must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static objectGraphIterator(Ljava/lang/Object;Lorg/apache/commons/collections/Transformer;)Ljava/util/Iterator;
    .locals 1

    .line 600
    new-instance v0, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/ObjectGraphIterator;-><init>(Ljava/lang/Object;Lorg/apache/commons/collections/Transformer;)V

    return-object v0
.end method

.method public static singletonIterator(Ljava/lang/Object;)Lorg/apache/commons/collections/ResettableIterator;
    .locals 1

    .line 194
    new-instance v0, Lorg/apache/commons/collections/iterators/SingletonIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/SingletonIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static singletonListIterator(Ljava/lang/Object;)Ljava/util/ListIterator;
    .locals 1

    .line 207
    new-instance v0, Lorg/apache/commons/collections/iterators/SingletonListIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/SingletonListIterator;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static toArray(Ljava/util/Iterator;)[Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_0

    const/16 v0, 0x64

    .line 786
    invoke-static {p0, v0}, Lorg/apache/commons/collections/IteratorUtils;->toList(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object p0

    .line 787
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 784
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toArray(Ljava/util/Iterator;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x64

    .line 810
    invoke-static {p0, v0}, Lorg/apache/commons/collections/IteratorUtils;->toList(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object p0

    .line 811
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 808
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Array class must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 805
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Iterator must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toList(Ljava/util/Iterator;)Ljava/util/List;
    .locals 1

    const/16 v0, 0xa

    .line 825
    invoke-static {p0, v0}, Lorg/apache/commons/collections/IteratorUtils;->toList(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static toList(Ljava/util/Iterator;I)Ljava/util/List;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 847
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 848
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 849
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    .line 845
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Estimated size must be greater than 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 842
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Iterator must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toListIterator(Ljava/util/Iterator;)Ljava/util/ListIterator;
    .locals 1

    if-eqz p0, :cond_0

    .line 769
    new-instance v0, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections/iterators/ListIteratorWrapper;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 767
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "Iterator must not be null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static transformedIterator(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;)Ljava/util/Iterator;
    .locals 1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    .line 623
    new-instance v0, Lorg/apache/commons/collections/iterators/TransformIterator;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections/iterators/TransformIterator;-><init>(Ljava/util/Iterator;Lorg/apache/commons/collections/Transformer;)V

    return-object v0

    .line 621
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Transformer must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 618
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Iterator must not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static unmodifiableIterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 0

    .line 415
    invoke-static {p0}, Lorg/apache/commons/collections/iterators/UnmodifiableIterator;->decorate(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableListIterator(Ljava/util/ListIterator;)Ljava/util/ListIterator;
    .locals 0

    .line 428
    invoke-static {p0}, Lorg/apache/commons/collections/iterators/UnmodifiableListIterator;->decorate(Ljava/util/ListIterator;)Ljava/util/ListIterator;

    move-result-object p0

    return-object p0
.end method

.method public static unmodifiableMapIterator(Lorg/apache/commons/collections/MapIterator;)Lorg/apache/commons/collections/MapIterator;
    .locals 0

    .line 440
    invoke-static {p0}, Lorg/apache/commons/collections/iterators/UnmodifiableMapIterator;->decorate(Lorg/apache/commons/collections/MapIterator;)Lorg/apache/commons/collections/MapIterator;

    move-result-object p0

    return-object p0
.end method
