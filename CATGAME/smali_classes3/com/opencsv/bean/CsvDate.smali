.class public interface abstract annotation Lcom/opencsv/bean/CsvDate;
.super Ljava/lang/Object;
.source "CsvDate.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/opencsv/bean/CsvDate;
        chronology = "ISO"
        value = "yyyyMMdd\'T\'HHmmss"
        writeChronology = "ISO"
        writeChronologyEqualsReadChronology = true
        writeFormat = "yyyyMMdd\'T\'HHmmss"
        writeFormatEqualsReadFormat = true
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
.method public abstract chronology()Ljava/lang/String;
.end method

.method public abstract value()Ljava/lang/String;
.end method

.method public abstract writeChronology()Ljava/lang/String;
.end method

.method public abstract writeChronologyEqualsReadChronology()Z
.end method

.method public abstract writeFormat()Ljava/lang/String;
.end method

.method public abstract writeFormatEqualsReadFormat()Z
.end method
