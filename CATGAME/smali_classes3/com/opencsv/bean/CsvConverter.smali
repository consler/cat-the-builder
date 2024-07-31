.class public interface abstract Lcom/opencsv/bean/CsvConverter;
.super Ljava/lang/Object;
.source "CsvConverter.java"


# virtual methods
.method public abstract convertToRead(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;,
            Lcom/opencsv/exceptions/CsvConstraintViolationException;
        }
    .end annotation
.end method

.method public abstract convertToWrite(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvDataTypeMismatchException;
        }
    .end annotation
.end method

.method public abstract setErrorLocale(Ljava/util/Locale;)V
.end method

.method public abstract setLocale(Ljava/lang/String;)V
.end method

.method public abstract setType(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation
.end method

.method public abstract setWriteLocale(Ljava/lang/String;)V
.end method
