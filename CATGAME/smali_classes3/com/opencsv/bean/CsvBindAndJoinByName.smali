.class public interface abstract annotation Lcom/opencsv/bean/CsvBindAndJoinByName;
.super Ljava/lang/Object;
.source "CsvBindAndJoinByName.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/opencsv/bean/CsvBindAndJoinByName;
        capture = ""
        column = ""
        converter = Lcom/opencsv/bean/AbstractCsvConverter;
        format = ""
        locale = ""
        mapType = Lorg/apache/commons/collections4/MultiValuedMap;
        required = false
        writeLocale = ""
        writeLocaleEqualsReadLocale = true
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract capture()Ljava/lang/String;
.end method

.method public abstract column()Ljava/lang/String;
.end method

.method public abstract converter()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/opencsv/bean/AbstractCsvConverter;",
            ">;"
        }
    .end annotation
.end method

.method public abstract elementType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract format()Ljava/lang/String;
.end method

.method public abstract locale()Ljava/lang/String;
.end method

.method public abstract mapType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/commons/collections4/MultiValuedMap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract required()Z
.end method

.method public abstract writeLocale()Ljava/lang/String;
.end method

.method public abstract writeLocaleEqualsReadLocale()Z
.end method
