.class public interface abstract Lcom/opencsv/validators/RowValidator;
.super Ljava/lang/Object;
.source "RowValidator.java"


# virtual methods
.method public abstract isValid([Ljava/lang/String;)Z
.end method

.method public abstract validate([Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation
.end method
