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
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "declaringClass"    # Ljava/lang/Class;
    .param p3, "order"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 29
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->fieldName:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->declaringClass:Ljava/lang/Class;

    .line 31
    iput p3, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->order:I

    .line 32
    move-object v0, p2

    .line 33
    .local v0, "c":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 34
    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_0
    iput v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->depth:I

    .line 39
    return-void

    .line 27
    .end local v0    # "c":Ljava/lang/Class;
    .end local v1    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "fieldName or declaringClass is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 58
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
    move-object v1, p1

    check-cast v1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .line 63
    .local v1, "fieldKey":Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->declaringClass:Ljava/lang/Class;

    iget-object v4, v1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 64
    return v2

    .line 65
    :cond_2
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->fieldName:Ljava/lang/String;

    iget-object v4, v1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->fieldName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 66
    return v2

    .line 68
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
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->fieldName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 74
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1d

    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 75
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "FieldKey{order="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->order:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", writer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->depth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", declaringClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->declaringClass:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, ", fieldName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
