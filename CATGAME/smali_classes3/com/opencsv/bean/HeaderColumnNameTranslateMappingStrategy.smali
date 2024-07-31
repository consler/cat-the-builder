.class public Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;
.super Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;
.source "HeaderColumnNameTranslateMappingStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/opencsv/bean/HeaderNameBaseMappingStrategy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final columnMapping:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    .local p0, "this":Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;, "Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy<TT;>;"
    invoke-direct {p0}, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->columnMapping:Ljava/util/Map;

    .line 39
    return-void
.end method


# virtual methods
.method public getColumnMapping()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;, "Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->columnMapping:Ljava/util/Map;

    return-object v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 3
    .param p1, "col"    # I

    .line 43
    .local p0, "this":Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;, "Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy<TT;>;"
    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0, p1}, Lcom/opencsv/bean/HeaderIndex;->getByPosition(I)Ljava/lang/String;

    move-result-object v0

    .line 44
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->columnMapping:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    .line 47
    :cond_0
    return-object v0
.end method

.method public setColumnMapping(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p0, "this":Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;, "Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy<TT;>;"
    .local p1, "columnMapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->columnMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 64
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 65
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->columnMapping:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->getType()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->loadFieldMap()V

    .line 70
    :cond_1
    return-void
.end method
