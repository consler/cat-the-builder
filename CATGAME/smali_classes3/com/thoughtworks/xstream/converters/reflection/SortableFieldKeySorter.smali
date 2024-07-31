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

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

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

    .line 100
    return-void
.end method

.method public registerFieldOrder(Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "fields"    # [Ljava/lang/String;

    .line 58
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->map:Ljava/util/Map;

    new-instance v1, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;

    invoke-direct {v1, p0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;-><init>(Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;Ljava/lang/Class;[Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "keyedByFieldKey"    # Ljava/util/Map;

    .line 36
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    new-instance v0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;-><init>()V

    .line 38
    .local v0, "result":Ljava/util/Map;
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->EMPTY_FIELD_KEY_ARRAY:[Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    check-cast v1, [Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .line 39
    .local v1, "fieldKeys":[Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;->map:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Comparator;

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 40
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 41
    aget-object v3, v1, v2

    aget-object v4, v1, v2

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v2    # "i":I
    :cond_0
    return-object v0

    .line 45
    .end local v0    # "result":Ljava/util/Map;
    .end local v1    # "fieldKeys":[Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    :cond_1
    return-object p2
.end method
