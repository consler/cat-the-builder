.class public interface abstract annotation Lcom/opencsv/bean/CsvBindByPosition;
.super Ljava/lang/Object;
.source "CsvBindByPosition.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/opencsv/bean/CsvBindByPosition;
        capture = ""
        format = ""
        locale = ""
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

.method public abstract format()Ljava/lang/String;
.end method

.method public abstract locale()Ljava/lang/String;
.end method

.method public abstract position()I
.end method

.method public abstract required()Z
.end method

.method public abstract writeLocale()Ljava/lang/String;
.end method

.method public abstract writeLocaleEqualsReadLocale()Z
.end method
