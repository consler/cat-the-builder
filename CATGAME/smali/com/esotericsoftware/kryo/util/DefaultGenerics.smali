.class public final Lcom/esotericsoftware/kryo/util/DefaultGenerics;
.super Ljava/lang/Object;
.source "DefaultGenerics.java"

# interfaces
.implements Lcom/esotericsoftware/kryo/util/Generics;


# instance fields
.field private arguments:[Ljava/lang/reflect/Type;

.field private argumentsSize:I

.field private depths:[I

.field private genericTypes:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

.field private genericTypesSize:I

.field private final kryo:Lcom/esotericsoftware/kryo/Kryo;


# direct methods
.method public constructor <init>(Lcom/esotericsoftware/kryo/Kryo;)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v1, v0, [Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    .line 33
    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypes:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    new-array v1, v0, [I

    .line 34
    iput-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->depths:[I

    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 37
    iput-object v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    .line 40
    iput-object p1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    return-void
.end method


# virtual methods
.method public getGenericTypesSize()I
    .locals 1

    .line 150
    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypesSize:I

    return v0
.end method

.method public nextGenericClass()Ljava/lang/Class;
    .locals 2

    .line 89
    invoke-virtual {p0}, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->nextGenericTypes()[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 91
    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->resolve(Lcom/esotericsoftware/kryo/util/Generics;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public nextGenericTypes()[Lcom/esotericsoftware/kryo/util/Generics$GenericType;
    .locals 4

    .line 73
    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypesSize:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    add-int/lit8 v0, v0, -0x1

    .line 76
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypes:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    aget-object v2, v2, v0

    .line 77
    iget-object v3, v2, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->arguments:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    if-nez v3, :cond_0

    return-object v1

    .line 79
    :cond_0
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->depths:[I

    aget v0, v3, v0

    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v3}, Lcom/esotericsoftware/kryo/Kryo;->getDepth()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v0, v3, :cond_1

    .line 80
    iget-object v0, v2, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->arguments:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    iget-object v1, v2, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->arguments:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->pushGenericType(Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V

    .line 81
    iget-object v0, v2, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->arguments:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    return-object v0

    :cond_1
    return-object v1
.end method

.method public popGenericType()V
    .locals 3

    .line 63
    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypesSize:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 66
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->depths:[I

    aget v1, v1, v0

    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v2}, Lcom/esotericsoftware/kryo/Kryo;->getDepth()I

    move-result v2

    if-ge v1, v2, :cond_1

    return-void

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypes:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 68
    iput v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypesSize:I

    return-void
.end method

.method public popTypeVariables(I)V
    .locals 4

    .line 133
    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->argumentsSize:I

    sub-int p1, v0, p1

    .line 134
    iput p1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->argumentsSize:I

    :goto_0
    if-ge p1, v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    add-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, p1

    move p1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pushGenericType(Lcom/esotericsoftware/kryo/util/Generics$GenericType;)V
    .locals 5

    .line 46
    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypesSize:I

    add-int/lit8 v1, v0, 0x1

    .line 47
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypes:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    array-length v3, v2

    if-ne v1, v3, :cond_0

    .line 48
    array-length v3, v2

    shl-int/lit8 v3, v3, 0x1

    new-array v3, v3, [Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    const/4 v4, 0x0

    .line 49
    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    iput-object v3, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypes:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    .line 51
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->depths:[I

    array-length v3, v2

    shl-int/lit8 v3, v3, 0x1

    new-array v3, v3, [I

    .line 52
    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    iput-object v3, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->depths:[I

    .line 56
    :cond_0
    iput v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypesSize:I

    .line 57
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->genericTypes:[Lcom/esotericsoftware/kryo/util/Generics$GenericType;

    aput-object p1, v1, v0

    .line 58
    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->depths:[I

    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->kryo:Lcom/esotericsoftware/kryo/Kryo;

    invoke-virtual {v1}, Lcom/esotericsoftware/kryo/Kryo;->getDepth()I

    move-result v1

    aput v1, p1, v0

    return-void
.end method

.method public pushTypeVariables(Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;[Lcom/esotericsoftware/kryo/util/Generics$GenericType;)I
    .locals 10

    .line 97
    iget v0, p1, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->total:I

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget v0, p1, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->rootTotal:I

    array-length v2, p2

    if-le v0, v2, :cond_0

    goto :goto_3

    .line 99
    :cond_0
    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->argumentsSize:I

    .line 102
    iget v2, p1, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->total:I

    add-int/2addr v2, v0

    .line 103
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    array-length v4, v3

    if-le v2, v4, :cond_1

    .line 104
    array-length v3, v3

    shl-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v2, v2, [Ljava/lang/reflect/Type;

    .line 105
    iget-object v3, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    iput-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    .line 110
    :cond_1
    iget-object v2, p1, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->counts:[I

    .line 111
    iget-object p1, p1, Lcom/esotericsoftware/kryo/util/Generics$GenericsHierarchy;->parameters:[Ljava/lang/reflect/TypeVariable;

    .line 112
    array-length v3, p2

    move v4, v1

    :goto_0
    if-ge v1, v3, :cond_5

    .line 113
    aget-object v5, p2, v1

    .line 114
    invoke-virtual {v5, p0}, Lcom/esotericsoftware/kryo/util/Generics$GenericType;->resolve(Lcom/esotericsoftware/kryo/util/Generics;)Ljava/lang/Class;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_2

    .line 116
    :cond_2
    aget v7, v2, v1

    if-nez v5, :cond_3

    add-int/2addr v4, v7

    goto :goto_2

    :cond_3
    add-int/2addr v7, v4

    :goto_1
    if-ge v4, v7, :cond_4

    .line 121
    iget-object v5, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    iget v8, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->argumentsSize:I

    aget-object v9, p1, v4

    aput-object v9, v5, v8

    add-int/lit8 v9, v8, 0x1

    .line 122
    aput-object v6, v5, v9

    add-int/lit8 v8, v8, 0x2

    .line 123
    iput v8, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->argumentsSize:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_5
    iget p1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->argumentsSize:I

    sub-int/2addr p1, v0

    return p1

    :cond_6
    :goto_3
    return v1
.end method

.method public resolveTypeVariable(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .locals 2

    .line 141
    iget v0, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->argumentsSize:I

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_2

    .line 142
    iget-object v1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    aget-object v1, v1, v0

    if-eq v1, p1, :cond_1

    .line 143
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x2

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    add-int/lit8 v0, v0, 0x1

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Class;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 155
    :goto_0
    iget v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->argumentsSize:I

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    const-string v2, ", "

    .line 156
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    aget-object v2, v2, v1

    check-cast v2, Ljava/lang/reflect/TypeVariable;

    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    .line 158
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v2, p0, Lcom/esotericsoftware/kryo/util/DefaultGenerics;->arguments:[Ljava/lang/reflect/Type;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 161
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
