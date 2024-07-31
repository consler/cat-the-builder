.class public Landroidx/camera/core/impl/OptionsBundle;
.super Ljava/lang/Object;
.source "OptionsBundle.java"

# interfaces
.implements Landroidx/camera/core/impl/Config;


# static fields
.field private static final EMPTY_BUNDLE:Landroidx/camera/core/impl/OptionsBundle;

.field protected static final ID_COMPARE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroidx/camera/core/impl/Config$Option<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected final mOptions:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Landroidx/camera/core/impl/Config$Option<",
            "*>;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/Config$OptionPriority;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 38
    sget-object v0, Landroidx/camera/core/impl/-$$Lambda$OptionsBundle$eYBKifCst1-YbBGv195jrqZXdLA;->INSTANCE:Landroidx/camera/core/impl/-$$Lambda$OptionsBundle$eYBKifCst1-YbBGv195jrqZXdLA;

    sput-object v0, Landroidx/camera/core/impl/OptionsBundle;->ID_COMPARE:Ljava/util/Comparator;

    .line 42
    new-instance v0, Landroidx/camera/core/impl/OptionsBundle;

    new-instance v1, Ljava/util/TreeMap;

    sget-object v2, Landroidx/camera/core/impl/OptionsBundle;->ID_COMPARE:Ljava/util/Comparator;

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {v0, v1}, Landroidx/camera/core/impl/OptionsBundle;-><init>(Ljava/util/TreeMap;)V

    sput-object v0, Landroidx/camera/core/impl/OptionsBundle;->EMPTY_BUNDLE:Landroidx/camera/core/impl/OptionsBundle;

    return-void
.end method

.method constructor <init>(Ljava/util/TreeMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap<",
            "Landroidx/camera/core/impl/Config$Option<",
            "*>;",
            "Ljava/util/Map<",
            "Landroidx/camera/core/impl/Config$OptionPriority;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 48
    .local p1, "options":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Landroidx/camera/core/impl/Config$Option<*>;Ljava/util/Map<Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroidx/camera/core/impl/OptionsBundle;->mOptions:Ljava/util/TreeMap;

    .line 50
    return-void
.end method

.method public static emptyBundle()Landroidx/camera/core/impl/OptionsBundle;
    .locals 1

    .line 90
    sget-object v0, Landroidx/camera/core/impl/OptionsBundle;->EMPTY_BUNDLE:Landroidx/camera/core/impl/OptionsBundle;

    return-object v0
.end method

.method public static from(Landroidx/camera/core/impl/Config;)Landroidx/camera/core/impl/OptionsBundle;
    .locals 8
    .param p0, "otherConfig"    # Landroidx/camera/core/impl/Config;

    .line 63
    const-class v0, Landroidx/camera/core/impl/OptionsBundle;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    move-object v0, p0

    check-cast v0, Landroidx/camera/core/impl/OptionsBundle;

    return-object v0

    .line 67
    :cond_0
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Landroidx/camera/core/impl/OptionsBundle;->ID_COMPARE:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 69
    .local v0, "persistentOptions":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Landroidx/camera/core/impl/Config$Option<*>;Ljava/util/Map<Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;>;>;"
    invoke-interface {p0}, Landroidx/camera/core/impl/Config;->listOptions()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/camera/core/impl/Config$Option;

    .line 70
    .local v2, "opt":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<*>;"
    invoke-interface {p0, v2}, Landroidx/camera/core/impl/Config;->getPriorities(Landroidx/camera/core/impl/Config$Option;)Ljava/util/Set;

    move-result-object v3

    .line 71
    .local v3, "priorities":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/core/impl/Config$OptionPriority;>;"
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 72
    .local v4, "valuesMap":Ljava/util/Map;, "Ljava/util/Map<Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/camera/core/impl/Config$OptionPriority;

    .line 73
    .local v6, "priority":Landroidx/camera/core/impl/Config$OptionPriority;
    invoke-interface {p0, v2, v6}, Landroidx/camera/core/impl/Config;->retrieveOptionWithPriority(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .end local v6    # "priority":Landroidx/camera/core/impl/Config$OptionPriority;
    goto :goto_1

    .line 75
    :cond_1
    invoke-virtual {v0, v2, v4}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v2    # "opt":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<*>;"
    .end local v3    # "priorities":Ljava/util/Set;, "Ljava/util/Set<Landroidx/camera/core/impl/Config$OptionPriority;>;"
    .end local v4    # "valuesMap":Ljava/util/Map;, "Ljava/util/Map<Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;>;"
    goto :goto_0

    .line 78
    :cond_2
    new-instance v1, Landroidx/camera/core/impl/OptionsBundle;

    invoke-direct {v1, v0}, Landroidx/camera/core/impl/OptionsBundle;-><init>(Ljava/util/TreeMap;)V

    return-object v1
.end method

.method static synthetic lambda$static$0(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$Option;)I
    .locals 2
    .param p0, "o1"    # Landroidx/camera/core/impl/Config$Option;
    .param p1, "o2"    # Landroidx/camera/core/impl/Config$Option;

    .line 40
    invoke-virtual {p0}, Landroidx/camera/core/impl/Config$Option;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/camera/core/impl/Config$Option;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public containsOption(Landroidx/camera/core/impl/Config$Option;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/Config$Option<",
            "*>;)Z"
        }
    .end annotation

    .line 101
    .local p1, "id":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<*>;"
    iget-object v0, p0, Landroidx/camera/core/impl/OptionsBundle;->mOptions:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public findOptions(Ljava/lang/String;Landroidx/camera/core/impl/Config$OptionMatcher;)V
    .locals 5
    .param p1, "idStem"    # Ljava/lang/String;
    .param p2, "matcher"    # Landroidx/camera/core/impl/Config$OptionMatcher;

    .line 160
    const-class v0, Ljava/lang/Void;

    invoke-static {p1, v0}, Landroidx/camera/core/impl/Config$Option;->create(Ljava/lang/String;Ljava/lang/Class;)Landroidx/camera/core/impl/Config$Option;

    move-result-object v0

    .line 162
    .local v0, "query":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<Ljava/lang/Void;>;"
    iget-object v1, p0, Landroidx/camera/core/impl/OptionsBundle;->mOptions:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 163
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/camera/core/impl/Config$Option<*>;Ljava/util/Map<Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/Config$Option;

    invoke-virtual {v3}, Landroidx/camera/core/impl/Config$Option;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 165
    goto :goto_1

    .line 168
    :cond_0
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/camera/core/impl/Config$Option;

    .line 169
    .local v3, "option":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<*>;"
    invoke-interface {p2, v3}, Landroidx/camera/core/impl/Config$OptionMatcher;->onOptionMatched(Landroidx/camera/core/impl/Config$Option;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 171
    goto :goto_1

    .line 173
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/camera/core/impl/Config$Option<*>;Ljava/util/Map<Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;>;>;"
    .end local v3    # "option":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<*>;"
    :cond_1
    goto :goto_0

    .line 174
    :cond_2
    :goto_1
    return-void
.end method

.method public getOptionPriority(Landroidx/camera/core/impl/Config$Option;)Landroidx/camera/core/impl/Config$OptionPriority;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/Config$Option<",
            "*>;)",
            "Landroidx/camera/core/impl/Config$OptionPriority;"
        }
    .end annotation

    .line 150
    .local p1, "opt":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<*>;"
    iget-object v0, p0, Landroidx/camera/core/impl/OptionsBundle;->mOptions:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 151
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 154
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/Config$OptionPriority;

    .line 155
    .local v1, "highestPrirotiy":Landroidx/camera/core/impl/Config$OptionPriority;
    return-object v1

    .line 152
    .end local v1    # "highestPrirotiy":Landroidx/camera/core/impl/Config$OptionPriority;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Option does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPriorities(Landroidx/camera/core/impl/Config$Option;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/impl/Config$Option<",
            "*>;)",
            "Ljava/util/Set<",
            "Landroidx/camera/core/impl/Config$OptionPriority;",
            ">;"
        }
    .end annotation

    .line 179
    .local p1, "opt":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<*>;"
    iget-object v0, p0, Landroidx/camera/core/impl/OptionsBundle;->mOptions:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 180
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 181
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    return-object v1

    .line 184
    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method public listOptions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/camera/core/impl/Config$Option<",
            "*>;>;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Landroidx/camera/core/impl/OptionsBundle;->mOptions:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueT:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/core/impl/Config$Option<",
            "TValueT;>;)TValueT;"
        }
    .end annotation

    .line 107
    .local p1, "id":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<TValueT;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/OptionsBundle;->mOptions:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 108
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;>;"
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->min(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/core/impl/Config$OptionPriority;

    .line 114
    .local v1, "highestPrirotiy":Landroidx/camera/core/impl/Config$OptionPriority;
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 115
    .local v2, "value":Ljava/lang/Object;, "TValueT;"
    return-object v2

    .line 109
    .end local v1    # "highestPrirotiy":Landroidx/camera/core/impl/Config$OptionPriority;
    .end local v2    # "value":Ljava/lang/Object;, "TValueT;"
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Option does not exist: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public retrieveOption(Landroidx/camera/core/impl/Config$Option;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueT:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/core/impl/Config$Option<",
            "TValueT;>;TValueT;)TValueT;"
        }
    .end annotation

    .line 124
    .local p1, "id":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<TValueT;>;"
    .local p2, "valueIfMissing":Ljava/lang/Object;, "TValueT;"
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/camera/core/impl/OptionsBundle;->retrieveOption(Landroidx/camera/core/impl/Config$Option;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    return-object p2
.end method

.method public retrieveOptionWithPriority(Landroidx/camera/core/impl/Config$Option;Landroidx/camera/core/impl/Config$OptionPriority;)Ljava/lang/Object;
    .locals 4
    .param p2, "priority"    # Landroidx/camera/core/impl/Config$OptionPriority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ValueT:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/camera/core/impl/Config$Option<",
            "TValueT;>;",
            "Landroidx/camera/core/impl/Config$OptionPriority;",
            ")TValueT;"
        }
    .end annotation

    .line 134
    .local p1, "id":Landroidx/camera/core/impl/Config$Option;, "Landroidx/camera/core/impl/Config$Option<TValueT;>;"
    iget-object v0, p0, Landroidx/camera/core/impl/OptionsBundle;->mOptions:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 135
    .local v0, "values":Ljava/util/Map;, "Ljava/util/Map<Landroidx/camera/core/impl/Config$OptionPriority;Ljava/lang/Object;>;"
    const-string v1, "Option does not exist: "

    if-eqz v0, :cond_1

    .line 138
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 144
    .local v1, "value":Ljava/lang/Object;, "TValueT;"
    return-object v1

    .line 139
    .end local v1    # "value":Ljava/lang/Object;, "TValueT;"
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with priority="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 136
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
