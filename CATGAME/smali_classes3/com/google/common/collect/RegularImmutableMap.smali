.class final Lcom/google/common/collect/RegularImmutableMap;
.super Lcom/google/common/collect/ImmutableMap;
.source "RegularImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/RegularImmutableMap$KeySet;,
        Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;,
        Lcom/google/common/collect/RegularImmutableMap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final ABSENT:B = -0x1t

.field private static final BYTE_MASK:I = 0xff

.field private static final BYTE_MAX_SIZE:I = 0x80

.field static final EMPTY:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHORT_MASK:I = 0xffff

.field private static final SHORT_MAX_SIZE:I = 0x8000

.field private static final serialVersionUID:J


# instance fields
.field final transient alternatingKeysAndValues:[Ljava/lang/Object;

.field private final transient hashTable:Ljava/lang/Object;

.field private final transient size:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lcom/google/common/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    sput-object v0, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/ImmutableMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;[Ljava/lang/Object;I)V
    .locals 0
    .param p1, "hashTable"    # Ljava/lang/Object;
    .param p2, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .param p3, "size"    # I

    .line 192
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMap;-><init>()V

    .line 193
    iput-object p1, p0, Lcom/google/common/collect/RegularImmutableMap;->hashTable:Ljava/lang/Object;

    .line 194
    iput-object p2, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    .line 195
    iput p3, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    .line 196
    return-void
.end method

.method static create(I[Ljava/lang/Object;)Lcom/google/common/collect/RegularImmutableMap;
    .locals 3
    .param p0, "n"    # I
    .param p1, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I[",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/RegularImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 73
    if-nez p0, :cond_0

    .line 74
    sget-object v0, Lcom/google/common/collect/RegularImmutableMap;->EMPTY:Lcom/google/common/collect/ImmutableMap;

    check-cast v0, Lcom/google/common/collect/RegularImmutableMap;

    return-object v0

    .line 75
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    .line 76
    aget-object v0, p1, v0

    aget-object v2, p1, v1

    invoke-static {v0, v2}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p1, v1}, Lcom/google/common/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v0

    .line 79
    :cond_1
    array-length v2, p1

    shr-int/lit8 v1, v2, 0x1

    invoke-static {p0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndex(II)I

    .line 80
    invoke-static {p0}, Lcom/google/common/collect/ImmutableSet;->chooseTableSize(I)I

    move-result v1

    .line 81
    .local v1, "tableSize":I
    invoke-static {p1, p0, v1, v0}, Lcom/google/common/collect/RegularImmutableMap;->createHashTable([Ljava/lang/Object;III)Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "hashTable":Ljava/lang/Object;
    new-instance v2, Lcom/google/common/collect/RegularImmutableMap;

    invoke-direct {v2, v0, p1, p0}, Lcom/google/common/collect/RegularImmutableMap;-><init>(Ljava/lang/Object;[Ljava/lang/Object;I)V

    return-object v2
.end method

.method static createHashTable([Ljava/lang/Object;III)Ljava/lang/Object;
    .locals 10
    .param p0, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .param p1, "n"    # I
    .param p2, "tableSize"    # I
    .param p3, "keyOffset"    # I

    .line 91
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 93
    aget-object v0, p0, p3

    xor-int/lit8 v1, p3, 0x1

    aget-object v1, p0, v1

    invoke-static {v0, v1}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 95
    const/4 v0, 0x0

    return-object v0

    .line 97
    :cond_0
    add-int/lit8 v0, p2, -0x1

    .line 98
    .local v0, "mask":I
    const/16 v1, 0x80

    const/4 v2, -0x1

    if-gt p2, v1, :cond_4

    .line 105
    new-array v1, p2, [B

    .line 106
    .local v1, "hashTable":[B
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([BB)V

    .line 108
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_3

    .line 109
    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, p3

    .line 110
    .local v3, "keyIndex":I
    aget-object v4, p0, v3

    .line 111
    .local v4, "key":Ljava/lang/Object;
    xor-int/lit8 v5, v3, 0x1

    aget-object v5, p0, v5

    .line 112
    .local v5, "value":Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v6

    .line 114
    .local v6, "h":I
    :goto_1
    and-int/2addr v6, v0

    .line 115
    aget-byte v7, v1, v6

    const/16 v8, 0xff

    and-int/2addr v7, v8

    .line 116
    .local v7, "previousKeyIndex":I
    if-ne v7, v8, :cond_1

    .line 117
    int-to-byte v8, v3

    aput-byte v8, v1, v6

    .line 118
    nop

    .line 108
    .end local v3    # "keyIndex":I
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "h":I
    .end local v7    # "previousKeyIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 119
    .restart local v3    # "keyIndex":I
    .restart local v4    # "key":Ljava/lang/Object;
    .restart local v5    # "value":Ljava/lang/Object;
    .restart local v6    # "h":I
    .restart local v7    # "previousKeyIndex":I
    :cond_1
    aget-object v8, p0, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 113
    .end local v7    # "previousKeyIndex":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 120
    .restart local v7    # "previousKeyIndex":I
    :cond_2
    invoke-static {v4, v5, p0, v7}, Lcom/google/common/collect/RegularImmutableMap;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object v8

    throw v8

    .line 124
    .end local v2    # "i":I
    .end local v3    # "keyIndex":I
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "h":I
    .end local v7    # "previousKeyIndex":I
    :cond_3
    return-object v1

    .line 125
    .end local v1    # "hashTable":[B
    :cond_4
    const v1, 0x8000

    if-gt p2, v1, :cond_8

    .line 132
    new-array v1, p2, [S

    .line 133
    .local v1, "hashTable":[S
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([SS)V

    .line 135
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, p1, :cond_7

    .line 136
    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, p3

    .line 137
    .restart local v3    # "keyIndex":I
    aget-object v4, p0, v3

    .line 138
    .restart local v4    # "key":Ljava/lang/Object;
    xor-int/lit8 v5, v3, 0x1

    aget-object v5, p0, v5

    .line 139
    .restart local v5    # "value":Ljava/lang/Object;
    invoke-static {v4, v5}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 140
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-static {v6}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v6

    .line 141
    .restart local v6    # "h":I
    :goto_3
    and-int/2addr v6, v0

    .line 142
    aget-short v7, v1, v6

    const v8, 0xffff

    and-int/2addr v7, v8

    .line 143
    .restart local v7    # "previousKeyIndex":I
    if-ne v7, v8, :cond_5

    .line 144
    int-to-short v8, v3

    aput-short v8, v1, v6

    .line 145
    nop

    .line 135
    .end local v3    # "keyIndex":I
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "h":I
    .end local v7    # "previousKeyIndex":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 146
    .restart local v3    # "keyIndex":I
    .restart local v4    # "key":Ljava/lang/Object;
    .restart local v5    # "value":Ljava/lang/Object;
    .restart local v6    # "h":I
    .restart local v7    # "previousKeyIndex":I
    :cond_5
    aget-object v8, p0, v7

    invoke-virtual {v8, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 140
    .end local v7    # "previousKeyIndex":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 147
    .restart local v7    # "previousKeyIndex":I
    :cond_6
    invoke-static {v4, v5, p0, v7}, Lcom/google/common/collect/RegularImmutableMap;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object v8

    throw v8

    .line 151
    .end local v2    # "i":I
    .end local v3    # "keyIndex":I
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;
    .end local v6    # "h":I
    .end local v7    # "previousKeyIndex":I
    :cond_7
    return-object v1

    .line 156
    .end local v1    # "hashTable":[S
    :cond_8
    new-array v1, p2, [I

    .line 157
    .local v1, "hashTable":[I
    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    .line 159
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, p1, :cond_b

    .line 160
    mul-int/lit8 v4, v3, 0x2

    add-int/2addr v4, p3

    .line 161
    .local v4, "keyIndex":I
    aget-object v5, p0, v4

    .line 162
    .local v5, "key":Ljava/lang/Object;
    xor-int/lit8 v6, v4, 0x1

    aget-object v6, p0, v6

    .line 163
    .local v6, "value":Ljava/lang/Object;
    invoke-static {v5, v6}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 164
    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v7

    .line 165
    .local v7, "h":I
    :goto_5
    and-int/2addr v7, v0

    .line 166
    aget v8, v1, v7

    .line 167
    .local v8, "previousKeyIndex":I
    if-ne v8, v2, :cond_9

    .line 168
    aput v4, v1, v7

    .line 169
    nop

    .line 159
    .end local v4    # "keyIndex":I
    .end local v5    # "key":Ljava/lang/Object;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "h":I
    .end local v8    # "previousKeyIndex":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 170
    .restart local v4    # "keyIndex":I
    .restart local v5    # "key":Ljava/lang/Object;
    .restart local v6    # "value":Ljava/lang/Object;
    .restart local v7    # "h":I
    .restart local v8    # "previousKeyIndex":I
    :cond_9
    aget-object v9, p0, v8

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 164
    .end local v8    # "previousKeyIndex":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 171
    .restart local v8    # "previousKeyIndex":I
    :cond_a
    invoke-static {v5, v6, p0, v8}, Lcom/google/common/collect/RegularImmutableMap;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 175
    .end local v3    # "i":I
    .end local v4    # "keyIndex":I
    .end local v5    # "key":Ljava/lang/Object;
    .end local v6    # "value":Ljava/lang/Object;
    .end local v7    # "h":I
    .end local v8    # "previousKeyIndex":I
    :cond_b
    return-object v1
.end method

.method private static duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;I)Ljava/lang/IllegalArgumentException;
    .locals 4
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "alternatingKeysAndValues"    # [Ljava/lang/Object;
    .param p3, "previousKeyIndex"    # I

    .line 181
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple entries with same key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " and "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, p3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    xor-int/lit8 v2, p3, 0x1

    aget-object v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static get(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p0, "hashTableObject"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p1, "alternatingKeysAndValues"    # [Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2, "size"    # I
    .param p3, "keyOffset"    # I
    .param p4, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 216
    const/4 v0, 0x0

    if-nez p4, :cond_0

    .line 217
    return-object v0

    .line 218
    :cond_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 219
    aget-object v1, p1, p3

    invoke-virtual {v1, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    xor-int/lit8 v0, p3, 0x1

    aget-object v0, p1, v0

    :cond_1
    return-object v0

    .line 222
    :cond_2
    if-nez p0, :cond_3

    .line 223
    return-object v0

    .line 225
    :cond_3
    instance-of v2, p0, [B

    if-eqz v2, :cond_6

    .line 226
    move-object v2, p0

    check-cast v2, [B

    check-cast v2, [B

    .line 227
    .local v2, "hashTable":[B
    array-length v3, v2

    sub-int/2addr v3, v1

    .line 228
    .local v3, "mask":I
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    .line 229
    .local v1, "h":I
    :goto_0
    and-int/2addr v1, v3

    .line 230
    aget-byte v4, v2, v1

    const/16 v5, 0xff

    and-int/2addr v4, v5

    .line 231
    .local v4, "keyIndex":I
    if-ne v4, v5, :cond_4

    .line 232
    return-object v0

    .line 233
    :cond_4
    aget-object v5, p1, v4

    invoke-virtual {v5, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 234
    xor-int/lit8 v0, v4, 0x1

    aget-object v0, p1, v0

    return-object v0

    .line 228
    .end local v4    # "keyIndex":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v1    # "h":I
    .end local v2    # "hashTable":[B
    .end local v3    # "mask":I
    :cond_6
    instance-of v2, p0, [S

    if-eqz v2, :cond_9

    .line 238
    move-object v2, p0

    check-cast v2, [S

    check-cast v2, [S

    .line 239
    .local v2, "hashTable":[S
    array-length v3, v2

    sub-int/2addr v3, v1

    .line 240
    .restart local v3    # "mask":I
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    .line 241
    .restart local v1    # "h":I
    :goto_1
    and-int/2addr v1, v3

    .line 242
    aget-short v4, v2, v1

    const v5, 0xffff

    and-int/2addr v4, v5

    .line 243
    .restart local v4    # "keyIndex":I
    if-ne v4, v5, :cond_7

    .line 244
    return-object v0

    .line 245
    :cond_7
    aget-object v5, p1, v4

    invoke-virtual {v5, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 246
    xor-int/lit8 v0, v4, 0x1

    aget-object v0, p1, v0

    return-object v0

    .line 240
    .end local v4    # "keyIndex":I
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 250
    .end local v1    # "h":I
    .end local v2    # "hashTable":[S
    .end local v3    # "mask":I
    :cond_9
    move-object v2, p0

    check-cast v2, [I

    check-cast v2, [I

    .line 251
    .local v2, "hashTable":[I
    array-length v3, v2

    sub-int/2addr v3, v1

    .line 252
    .restart local v3    # "mask":I
    invoke-virtual {p4}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result v1

    .line 253
    .restart local v1    # "h":I
    :goto_2
    and-int/2addr v1, v3

    .line 254
    aget v4, v2, v1

    .line 255
    .restart local v4    # "keyIndex":I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    .line 256
    return-object v0

    .line 257
    :cond_a
    aget-object v5, p1, v4

    invoke-virtual {v5, p4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 258
    xor-int/lit8 v0, v4, 0x1

    aget-object v0, p1, v0

    return-object v0

    .line 252
    .end local v4    # "keyIndex":I
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 266
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$EntrySet;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3, v2}, Lcom/google/common/collect/RegularImmutableMap$EntrySet;-><init>(Lcom/google/common/collect/ImmutableMap;[Ljava/lang/Object;II)V

    return-object v0
.end method

.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 342
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    .line 344
    .local v0, "keyList":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<TK;>;"
    new-instance v1, Lcom/google/common/collect/RegularImmutableMap$KeySet;

    invoke-direct {v1, p0, v0}, Lcom/google/common/collect/RegularImmutableMap$KeySet;-><init>(Lcom/google/common/collect/ImmutableMap;Lcom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method createValues()Lcom/google/common/collect/ImmutableCollection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 418
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/google/common/collect/RegularImmutableMap$KeysOrValuesAsList;-><init>([Ljava/lang/Object;II)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 207
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableMap;->hashTable:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/RegularImmutableMap;->alternatingKeysAndValues:[Ljava/lang/Object;

    iget v2, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;[Ljava/lang/Object;IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 423
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 200
    .local p0, "this":Lcom/google/common/collect/RegularImmutableMap;, "Lcom/google/common/collect/RegularImmutableMap<TK;TV;>;"
    iget v0, p0, Lcom/google/common/collect/RegularImmutableMap;->size:I

    return v0
.end method
