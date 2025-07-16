.class public Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
.super Ljava/lang/Object;
.source "FieldKey.java"


# instance fields
.field private final declaringClass:Ljava/lang/Class;

.field private final depth:I

.field private final fieldName:Ljava/lang/String;

.field private final order:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;I)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 29
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->fieldName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->declaringClass:Ljava/lang/Class;

    .line 31
    iput p3, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->order:I

    const/4 p1, 0x0

    .line 34
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p3

    if-eqz p3, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 36
    invoke-virtual {p2}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    .line 38
    :cond_0
    iput p1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->depth:I

    return-void

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fieldName or declaringClass is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 61
    :cond_1
    check-cast p1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .line 63
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->declaringClass:Ljava/lang/Class;

    iget-object v3, p1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 65
    :cond_2
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->fieldName:Ljava/lang/String;

    iget-object p1, p1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public getDeclaringClass()Ljava/lang/Class;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->declaringClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getDepth()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->depth:I

    return v0
.end method

.method public getFieldName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->fieldName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->order:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->fieldName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1d

    .line 74
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "FieldKey{order="

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", writer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->depth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", declaringClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", fieldName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
