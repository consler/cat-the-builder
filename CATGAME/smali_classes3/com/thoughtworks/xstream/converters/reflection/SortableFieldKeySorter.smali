.class public Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;
.super Ljava/lang/Object;
.source "SortableFieldKeySorter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;
.implements Lcom/thoughtworks/xstream/core/Caching;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;
    }
.end annotation


# static fields
.field private static final EMPTY_FIELD_KEY_ARRAY:[Lcom/thoughtworks/xstream/converters/reflection/FieldKey;


# instance fields
.field private final map:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .line 32
    sput-object v0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->EMPTY_FIELD_KEY_ARRAY:[Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->map:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public flushCache()V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public registerFieldOrder(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->map:Ljava/util/Map;

    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;

    invoke-direct {v1, p0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;-><init>(Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;Ljava/lang/Class;[Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    .line 36
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;-><init>()V

    .line 38
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->EMPTY_FIELD_KEY_ARRAY:[Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    check-cast v1, [Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .line 39
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Comparator;

    invoke-static {v1, p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    .line 40
    :goto_0
    array-length v2, v1

    if-ge p1, v2, :cond_0

    .line 41
    aget-object v2, v1, p1

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    return-object p2
.end method
