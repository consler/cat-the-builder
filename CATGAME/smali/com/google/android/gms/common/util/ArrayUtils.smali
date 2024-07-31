.class public final Lcom/google/android/gms/common/util/ArrayUtils;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendToArray([Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)[TT;"
        }
    .end annotation

    .line 102
    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot generate array of generic type w/o class info"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :cond_1
    :goto_0
    const/4 v0, 0x1

    if-nez p0, :cond_2

    .line 105
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    goto :goto_1

    .line 106
    :cond_2
    array-length v1, p0

    add-int/2addr v1, v0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 107
    :goto_1
    array-length v1, p0

    sub-int/2addr v1, v0

    aput-object p1, p0, v1

    .line 108
    return-object p0
.end method

.method public static varargs concat([[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)[TT;"
        }
    .end annotation

    .line 74
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    return-object p0

    .line 76
    :cond_0
    nop

    .line 77
    move v0, v1

    move v2, v0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 78
    aget-object v3, p0, v0

    array-length v3, v3

    add-int/2addr v2, v3

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_1
    aget-object v0, p0, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    .line 81
    aget-object v2, p0, v1

    array-length v2, v2

    .line 82
    const/4 v3, 0x1

    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 83
    aget-object v4, p0, v3

    .line 84
    array-length v5, v4

    invoke-static {v4, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    array-length v4, v4

    add-int/2addr v2, v4

    .line 86
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 87
    :cond_2
    return-object v0
.end method

.method public static varargs concatByteArrays([[B)[B
    .locals 6

    .line 88
    array-length v0, p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 89
    new-array p0, v1, [B

    return-object p0

    .line 90
    :cond_0
    nop

    .line 91
    move v0, v1

    move v2, v0

    :goto_0
    array-length v3, p0

    if-ge v0, v3, :cond_1

    .line 92
    aget-object v3, p0, v0

    array-length v3, v3

    add-int/2addr v2, v3

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_1
    aget-object v0, p0, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 95
    aget-object v2, p0, v1

    array-length v2, v2

    .line 96
    const/4 v3, 0x1

    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_2

    .line 97
    aget-object v4, p0, v3

    .line 98
    array-length v5, v4

    invoke-static {v4, v1, v0, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    array-length v4, v4

    add-int/2addr v2, v4

    .line 100
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 101
    :cond_2
    return-object v0
.end method

.method public static contains([II)Z
    .locals 4

    .line 9
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 10
    return v0

    .line 11
    :cond_0
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    .line 12
    if-ne v3, p1, :cond_1

    .line 13
    const/4 p0, 0x1

    return p0

    .line 14
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 15
    :cond_2
    return v0
.end method

.method public static contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 1
    nop

    .line 2
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    .line 3
    :goto_0
    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_2

    .line 4
    aget-object v3, p0, v2

    invoke-static {v3, p1}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5
    goto :goto_2

    .line 6
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 7
    :cond_2
    const/4 v2, -0x1

    .line 8
    :goto_2
    if-ltz v2, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v0
.end method

.method public static newArrayList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public static varargs removeAll([Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;[TT;)[TT;"
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 110
    return-object v0

    .line 111
    :cond_0
    if-eqz p1, :cond_9

    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_3

    .line 113
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    array-length v2, p0

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 114
    nop

    .line 115
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    .line 116
    array-length v2, p0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v6, p0, v4

    .line 117
    aget-object v7, p1, v3

    invoke-static {v7, v6}, Lcom/google/android/gms/common/internal/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 118
    add-int/lit8 v7, v5, 0x1

    aput-object v6, v1, v5

    move v5, v7

    .line 119
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    goto :goto_2

    .line 120
    :cond_4
    array-length v2, p0

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_6

    aget-object v5, p0, v3

    .line 121
    invoke-static {p1, v5}, Lcom/google/android/gms/common/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 122
    add-int/lit8 v6, v4, 0x1

    aput-object v5, v1, v4

    move v4, v6

    .line 123
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 120
    :cond_6
    move v5, v4

    .line 124
    :goto_2
    nop

    .line 125
    if-nez v1, :cond_7

    .line 126
    return-object v0

    .line 127
    :cond_7
    nop

    .line 128
    array-length p0, v1

    if-eq v5, p0, :cond_8

    .line 129
    invoke-static {v1, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 130
    :cond_8
    nop

    .line 131
    return-object v1

    .line 112
    :cond_9
    :goto_3
    array-length p1, p0

    invoke-static {p0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static toArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation

    .line 133
    array-length v0, p0

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 135
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 136
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_0
    return-object v1
.end method

.method public static toPrimitiveArray(Ljava/util/Collection;)[I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    .line 139
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 141
    :cond_0
    nop

    .line 142
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 143
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 144
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    .line 145
    move v0, v3

    goto :goto_0

    .line 146
    :cond_1
    return-object v1

    .line 140
    :cond_2
    :goto_1
    new-array p0, v0, [I

    return-object p0
.end method

.method public static toWrapperArray([I)[Ljava/lang/Integer;
    .locals 4

    .line 16
    if-nez p0, :cond_0

    .line 17
    const/4 p0, 0x0

    return-object p0

    .line 18
    :cond_0
    array-length v0, p0

    .line 19
    new-array v1, v0, [Ljava/lang/Integer;

    .line 20
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 21
    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 22
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 23
    :cond_1
    return-object v1
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[D)V
    .locals 4

    .line 53
    array-length v0, p1

    .line 54
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 55
    if-eqz v1, :cond_0

    .line 56
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    :cond_0
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_1
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[F)V
    .locals 3

    .line 46
    array-length v0, p1

    .line 47
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    :cond_0
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 52
    :cond_1
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[I)V
    .locals 3

    .line 32
    array-length v0, p1

    .line 33
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    :cond_0
    aget v2, p1, v1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[J)V
    .locals 4

    .line 39
    array-length v0, p1

    .line 40
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :cond_0
    aget-wide v2, p1, v1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_1
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/StringBuilder;",
            "[TT;)V"
        }
    .end annotation

    .line 25
    array-length v0, p1

    .line 26
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    :cond_0
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 31
    :cond_1
    return-void
.end method

.method public static writeArray(Ljava/lang/StringBuilder;[Z)V
    .locals 3

    .line 60
    array-length v0, p1

    .line 61
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 62
    if-eqz v1, :cond_0

    .line 63
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_0
    aget-boolean v2, p1, v1

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_1
    return-void
.end method

.method public static writeStringArray(Ljava/lang/StringBuilder;[Ljava/lang/String;)V
    .locals 4

    .line 67
    array-length v0, p1

    .line 68
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 69
    if-eqz v1, :cond_0

    .line 70
    const-string v2, ","

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    :cond_0
    const-string v2, "\""

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v1

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    :cond_1
    return-void
.end method
