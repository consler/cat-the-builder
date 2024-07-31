.class public final synthetic Lcom/opencsv/bean/MappingStrategy$-CC;
.super Ljava/lang/Object;
.source "MappingStrategy.java"


# direct methods
.method public static $default$ignoreFields(Lcom/opencsv/bean/MappingStrategy;Lorg/apache/commons/collections4/MultiValuedMap;)V
    .locals 1
    .param p0, "_this"    # Lcom/opencsv/bean/MappingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/MultiValuedMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 161
    .local p0, "this":Lcom/opencsv/bean/MappingStrategy;, "Lcom/opencsv/bean/MappingStrategy<TT;>;"
    .local p1, "fields":Lorg/apache/commons/collections4/MultiValuedMap;, "Lorg/apache/commons/collections4/MultiValuedMap<Ljava/lang/Class<*>;Ljava/lang/reflect/Field;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static $default$isAnnotationDriven(Lcom/opencsv/bean/MappingStrategy;)Z
    .locals 1
    .param p0, "_this"    # Lcom/opencsv/bean/MappingStrategy;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    .local p0, "this":Lcom/opencsv/bean/MappingStrategy;, "Lcom/opencsv/bean/MappingStrategy<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public static $default$setErrorLocale(Lcom/opencsv/bean/MappingStrategy;Ljava/util/Locale;)V
    .locals 0
    .param p0, "_this"    # Lcom/opencsv/bean/MappingStrategy;
    .param p1, "errorLocale"    # Ljava/util/Locale;

    .line 113
    .local p0, "this":Lcom/opencsv/bean/MappingStrategy;, "Lcom/opencsv/bean/MappingStrategy<TT;>;"
    return-void
.end method
