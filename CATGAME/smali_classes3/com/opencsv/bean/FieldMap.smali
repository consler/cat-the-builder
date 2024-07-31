.class public interface abstract Lcom/opencsv/bean/FieldMap;
.super Ljava/lang/Object;
.source "FieldMap.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "K::",
        "Ljava/lang/Comparable<",
        "TK;>;C::",
        "Lcom/opencsv/bean/ComplexFieldMapEntry<",
        "TI;TK;TT;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract generateHeader(Ljava/lang/Object;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvRequiredFieldEmptyException;
        }
    .end annotation
.end method

.method public abstract get(Ljava/lang/Comparable;)Lcom/opencsv/bean/BeanField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lcom/opencsv/bean/BeanField<",
            "TT;TK;>;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/Comparable;Lcom/opencsv/bean/BeanField;)Lcom/opencsv/bean/BeanField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lcom/opencsv/bean/BeanField<",
            "TT;TK;>;)",
            "Lcom/opencsv/bean/BeanField<",
            "TT;TK;>;"
        }
    .end annotation
.end method

.method public abstract putComplex(Ljava/lang/Object;Lcom/opencsv/bean/BeanField;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TI;",
            "Lcom/opencsv/bean/BeanField<",
            "TT;TK;>;)V"
        }
    .end annotation
.end method

.method public abstract setErrorLocale(Ljava/util/Locale;)V
.end method

.method public abstract values()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/opencsv/bean/BeanField<",
            "TT;TK;>;>;"
        }
    .end annotation
.end method
