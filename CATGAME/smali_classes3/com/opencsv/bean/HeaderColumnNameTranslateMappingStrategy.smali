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
    invoke-direct {p0}, Lcom/opencsv/bean/HeaderNameBaseMappingStrategy;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->columnMapping:Ljava/util/Map;

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
    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->columnMapping:Ljava/util/Map;

    return-object v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->headerIndex:Lcom/opencsv/bean/HeaderIndex;

    invoke-virtual {v0, p1}, Lcom/opencsv/bean/HeaderIndex;->getByPosition(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->columnMapping:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_0
    return-object p1
.end method

.method public setColumnMapping(Ljava/util/Map;)V
    .locals 3
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
    iget-object v0, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->columnMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 64
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 65
    iget-object v1, p0, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->columnMapping:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->getType()Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/opencsv/bean/HeaderColumnNameTranslateMappingStrategy;->loadFieldMap()V

    :cond_1
    return-void
.end method
