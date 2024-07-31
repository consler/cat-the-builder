.class public interface abstract Lcom/opencsv/validators/LineValidator;
.super Ljava/lang/Object;
.source "LineValidator.java"


# virtual methods
.method public abstract isValid(Ljava/lang/String;)Z
.end method

.method public abstract validate(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation
.end method
