.class public Lorg/apache/commons/beanutils/expression/DefaultResolver;
.super Ljava/lang/Object;
.source "DefaultResolver.java"

# interfaces
.implements Lorg/apache/commons/beanutils/expression/Resolver;


# static fields
.field private static final INDEXED_END:C = ']'

.field private static final INDEXED_START:C = '['

.field private static final MAPPED_END:C = ')'

.field private static final MAPPED_START:C = '('

.field private static final NESTED:C = '.'


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method


# virtual methods
.method public getIndex(Ljava/lang/String;)I
    .locals 9
    .param p1, "expression"    # Ljava/lang/String;

    .line 80
    const/4 v0, -0x1

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 83
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 84
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 85
    .local v2, "c":C
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_5

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 87
    :cond_1
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_4

    .line 88
    const/16 v0, 0x5d

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 89
    .local v0, "end":I
    if-ltz v0, :cond_3

    .line 92
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    const/4 v4, 0x0

    .line 98
    .local v4, "index":I
    const/16 v5, 0xa

    :try_start_0
    invoke-static {v3, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    .line 102
    nop

    .line 103
    return v4

    .line 99
    :catch_0
    move-exception v5

    .line 100
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid index value \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 94
    .end local v4    # "index":I
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "No Index Value"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 90
    .end local v3    # "value":Ljava/lang/String;
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Missing End Delimiter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 83
    .end local v0    # "end":I
    .end local v2    # "c":C
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    .restart local v2    # "c":C
    :cond_5
    :goto_1
    return v0

    .line 106
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_6
    return v0

    .line 81
    :cond_7
    :goto_2
    return v0
.end method

.method public getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "expression"    # Ljava/lang/String;

    .line 117
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 120
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 121
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 122
    .local v2, "c":C
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_4

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    const/16 v3, 0x28

    if-ne v2, v3, :cond_3

    .line 125
    const/16 v0, 0x29

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 126
    .local v0, "end":I
    if-ltz v0, :cond_2

    .line 129
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 127
    :cond_2
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Missing End Delimiter"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    .end local v0    # "end":I
    .end local v2    # "c":C
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    .restart local v2    # "c":C
    :cond_4
    :goto_1
    return-object v0

    .line 132
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_5
    return-object v0

    .line 118
    :cond_6
    :goto_2
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "expression"    # Ljava/lang/String;

    .line 142
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 145
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 146
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 147
    .local v1, "c":C
    const/16 v2, 0x2e

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 148
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 149
    :cond_1
    const/16 v2, 0x28

    if-eq v1, v2, :cond_3

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_2

    goto :goto_1

    .line 145
    .end local v1    # "c":C
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    .restart local v1    # "c":C
    :cond_3
    :goto_1
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 153
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_4
    return-object p1

    .line 143
    :cond_5
    :goto_2
    return-object p1
.end method

.method public hasNested(Ljava/lang/String;)Z
    .locals 2
    .param p1, "expression"    # Ljava/lang/String;

    .line 164
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/expression/DefaultResolver;->remove(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 165
    :cond_2
    :goto_0
    return v0
.end method

.method public isIndexed(Ljava/lang/String;)Z
    .locals 4
    .param p1, "expression"    # Ljava/lang/String;

    .line 179
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 182
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 183
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 184
    .local v2, "c":C
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_3

    const/16 v3, 0x28

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 186
    :cond_1
    const/16 v3, 0x5b

    if-ne v2, v3, :cond_2

    .line 187
    const/4 v0, 0x1

    return v0

    .line 182
    .end local v2    # "c":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 185
    .restart local v2    # "c":C
    :cond_3
    :goto_1
    return v0

    .line 190
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_4
    return v0

    .line 180
    :cond_5
    :goto_2
    return v0
.end method

.method public isMapped(Ljava/lang/String;)Z
    .locals 4
    .param p1, "expression"    # Ljava/lang/String;

    .line 201
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 204
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 205
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 206
    .local v2, "c":C
    const/16 v3, 0x2e

    if-eq v2, v3, :cond_3

    const/16 v3, 0x5b

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 208
    :cond_1
    const/16 v3, 0x28

    if-ne v2, v3, :cond_2

    .line 209
    const/4 v0, 0x1

    return v0

    .line 204
    .end local v2    # "c":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .restart local v2    # "c":C
    :cond_3
    :goto_1
    return v0

    .line 212
    .end local v1    # "i":I
    .end local v2    # "c":C
    :cond_4
    return v0

    .line 202
    :cond_5
    :goto_2
    return v0
.end method

.method public next(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "expression"    # Ljava/lang/String;

    .line 223
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 226
    :cond_0
    const/4 v0, 0x0

    .line 227
    .local v0, "indexed":Z
    const/4 v1, 0x0

    .line 228
    .local v1, "mapped":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 229
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 230
    .local v3, "c":C
    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 231
    const/16 v5, 0x5d

    if-ne v3, v5, :cond_5

    .line 232
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 234
    :cond_1
    if-eqz v1, :cond_2

    .line 235
    const/16 v5, 0x29

    if-ne v3, v5, :cond_5

    .line 236
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 239
    :cond_2
    const/16 v5, 0x2e

    if-ne v3, v5, :cond_3

    .line 240
    invoke-virtual {p1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 241
    :cond_3
    const/16 v4, 0x28

    if-ne v3, v4, :cond_4

    .line 242
    const/4 v1, 0x1

    goto :goto_1

    .line 243
    :cond_4
    const/16 v4, 0x5b

    if-ne v3, v4, :cond_5

    .line 244
    const/4 v0, 0x1

    .line 228
    .end local v3    # "c":C
    :cond_5
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 248
    .end local v2    # "i":I
    :cond_6
    return-object p1

    .line 224
    .end local v0    # "indexed":Z
    .end local v1    # "mapped":Z
    :cond_7
    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "expression"    # Ljava/lang/String;

    .line 260
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/beanutils/expression/DefaultResolver;->next(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    .local v1, "property":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 265
    return-object v0

    .line 267
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 268
    .local v0, "start":I
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    .line 269
    add-int/lit8 v0, v0, 0x1

    .line 271
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 261
    .end local v0    # "start":I
    .end local v1    # "property":Ljava/lang/String;
    :cond_3
    :goto_0
    return-object v0
.end method
