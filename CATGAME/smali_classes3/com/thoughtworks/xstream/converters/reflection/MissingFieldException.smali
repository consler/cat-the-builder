.class public Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;
.super Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;
.source "MissingFieldException.java"


# instance fields
.field private final className:Ljava/lang/String;

.field private final fieldName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Field not found in class."

    .line 32
    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/reflection/ObjectAccessException;-><init>(Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;->className:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;->fieldName:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "field"

    invoke-virtual {p0, p2, p1}, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getClassName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/MissingFieldException;->fieldName:Ljava/lang/String;

    return-object v0
.end method
