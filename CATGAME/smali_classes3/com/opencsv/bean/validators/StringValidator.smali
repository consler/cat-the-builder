.class public interface abstract Lcom/opencsv/bean/validators/StringValidator;
.super Ljava/lang/Object;
.source "StringValidator.java"


# virtual methods
.method public abstract isValid(Ljava/lang/String;)Z
.end method

.method public abstract setParameterString(Ljava/lang/String;)V
.end method

.method public abstract validate(Ljava/lang/String;Lcom/opencsv/bean/BeanField;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation
.end method
