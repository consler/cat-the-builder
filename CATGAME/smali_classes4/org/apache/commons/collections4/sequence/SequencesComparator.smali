.class public Lorg/apache/commons/collections4/sequence/SequencesComparator;
.super Ljava/lang/Object;
.source "SequencesComparator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final equator:Lorg/apache/commons/collections4/Equator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/Equator<",
            "-TT;>;"
        }
    .end annotation
.end field

.field private final sequence1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final sequence2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final vDown:[I

.field private final vUp:[I


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/apache/commons/collections4/sequence/SequencesComparator;, "Lorg/apache/commons/collections4/sequence/SequencesComparator<TT;>;"
    .local p1, "sequence1":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "sequence2":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {}, Lorg/apache/commons/collections4/functors/DefaultEquator;->defaultEquator()Lorg/apache/commons/collections4/functors/DefaultEquator;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator;-><init>(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/collections4/Equator;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/collections4/Equator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/List<",
            "TT;>;",
            "Lorg/apache/commons/collections4/Equator<",
            "-TT;>;)V"
        }
    .end annotation

    .line 107
    .local p0, "this":Lorg/apache/commons/collections4/sequence/SequencesComparator;, "Lorg/apache/commons/collections4/sequence/SequencesComparator<TT;>;"
    .local p1, "sequence1":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "sequence2":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p3, "equator":Lorg/apache/commons/collections4/Equator;, "Lorg/apache/commons/collections4/Equator<-TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence1:Ljava/util/List;

    .line 109
    iput-object p2, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence2:Ljava/util/List;

    .line 110
    iput-object p3, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->equator:Lorg/apache/commons/collections4/Equator;

    .line 112
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    .line 113
    .local v0, "size":I
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vDown:[I

    .line 114
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vUp:[I

    .line 115
    return-void
.end method

.method private buildScript(IIIILorg/apache/commons/collections4/sequence/EditScript;)V
    .locals 9
    .param p1, "start1"    # I
    .param p2, "end1"    # I
    .param p3, "start2"    # I
    .param p4, "end2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lorg/apache/commons/collections4/sequence/EditScript<",
            "TT;>;)V"
        }
    .end annotation

    .line 257
    .local p0, "this":Lorg/apache/commons/collections4/sequence/SequencesComparator;, "Lorg/apache/commons/collections4/sequence/SequencesComparator<TT;>;"
    .local p5, "script":Lorg/apache/commons/collections4/sequence/EditScript;, "Lorg/apache/commons/collections4/sequence/EditScript<TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->getMiddleSnake(IIII)Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;

    move-result-object v0

    .line 259
    .local v0, "middle":Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;
    if-eqz v0, :cond_3

    .line 260
    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->getStart()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->getDiag()I

    move-result v1

    sub-int v2, p2, p4

    if-eq v1, v2, :cond_3

    .line 261
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->getEnd()I

    move-result v1

    if-ne v1, p1, :cond_1

    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->getDiag()I

    move-result v1

    sub-int v2, p1, p3

    if-ne v1, v2, :cond_1

    goto :goto_1

    .line 283
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->getStart()I

    move-result v5

    .line 284
    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->getStart()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->getDiag()I

    move-result v2

    sub-int v7, v1, v2

    .line 283
    move-object v3, p0

    move v4, p1

    move v6, p3

    move-object v8, p5

    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->buildScript(IIIILorg/apache/commons/collections4/sequence/EditScript;)V

    .line 286
    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->getStart()I

    move-result v1

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->getEnd()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 287
    new-instance v2, Lorg/apache/commons/collections4/sequence/KeepCommand;

    iget-object v3, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence1:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/collections4/sequence/KeepCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v2}, Lorg/apache/commons/collections4/sequence/EditScript;->append(Lorg/apache/commons/collections4/sequence/KeepCommand;)V

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->getEnd()I

    move-result v3

    .line 290
    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->getEnd()I

    move-result v1

    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->getDiag()I

    move-result v2

    sub-int v5, v1, v2

    .line 289
    move-object v2, p0

    move v4, p2

    move v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->buildScript(IIIILorg/apache/commons/collections4/sequence/EditScript;)V

    goto :goto_3

    .line 263
    :cond_3
    :goto_1
    move v1, p1

    .line 264
    .restart local v1    # "i":I
    move v2, p3

    .line 265
    .local v2, "j":I
    :goto_2
    if-lt v1, p2, :cond_5

    if-ge v2, p4, :cond_4

    goto :goto_4

    .line 281
    .end local v1    # "i":I
    .end local v2    # "j":I
    :cond_4
    nop

    .line 293
    :goto_3
    return-void

    .line 266
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    :cond_5
    :goto_4
    if-ge v1, p2, :cond_6

    if-ge v2, p4, :cond_6

    iget-object v3, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->equator:Lorg/apache/commons/collections4/Equator;

    iget-object v4, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence1:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence2:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/collections4/Equator;->equate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 267
    new-instance v3, Lorg/apache/commons/collections4/sequence/KeepCommand;

    iget-object v4, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence1:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/collections4/sequence/KeepCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v3}, Lorg/apache/commons/collections4/sequence/EditScript;->append(Lorg/apache/commons/collections4/sequence/KeepCommand;)V

    .line 268
    add-int/lit8 v1, v1, 0x1

    .line 269
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 271
    :cond_6
    sub-int v3, p2, p1

    sub-int v4, p4, p3

    if-le v3, v4, :cond_7

    .line 272
    new-instance v3, Lorg/apache/commons/collections4/sequence/DeleteCommand;

    iget-object v4, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence1:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/collections4/sequence/DeleteCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v3}, Lorg/apache/commons/collections4/sequence/EditScript;->append(Lorg/apache/commons/collections4/sequence/DeleteCommand;)V

    .line 273
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 275
    :cond_7
    new-instance v3, Lorg/apache/commons/collections4/sequence/InsertCommand;

    iget-object v4, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence2:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/collections4/sequence/InsertCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v3}, Lorg/apache/commons/collections4/sequence/EditScript;->append(Lorg/apache/commons/collections4/sequence/InsertCommand;)V

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private buildSnake(IIII)Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;
    .locals 5
    .param p1, "start"    # I
    .param p2, "diag"    # I
    .param p3, "end1"    # I
    .param p4, "end2"    # I

    .line 146
    .local p0, "this":Lorg/apache/commons/collections4/sequence/SequencesComparator;, "Lorg/apache/commons/collections4/sequence/SequencesComparator<TT;>;"
    move v0, p1

    .line 147
    .local v0, "end":I
    :goto_0
    sub-int v1, v0, p2

    if-ge v1, p4, :cond_0

    if-ge v0, p3, :cond_0

    iget-object v1, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->equator:Lorg/apache/commons/collections4/Equator;

    iget-object v2, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence1:Ljava/util/List;

    .line 149
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence2:Ljava/util/List;

    sub-int v4, v0, p2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/collections4/Equator;->equate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    new-instance v1, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;

    invoke-direct {v1, p1, v0, p2}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;-><init>(III)V

    return-object v1
.end method

.method private getMiddleSnake(IIII)Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;
    .locals 19
    .param p1, "start1"    # I
    .param p2, "end1"    # I
    .param p3, "start2"    # I
    .param p4, "end2"    # I

    .line 174
    .local p0, "this":Lorg/apache/commons/collections4/sequence/SequencesComparator;, "Lorg/apache/commons/collections4/sequence/SequencesComparator<TT;>;"
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    sub-int v5, v2, v1

    .line 175
    .local v5, "m":I
    sub-int v6, v4, v3

    .line 176
    .local v6, "n":I
    if-eqz v5, :cond_e

    if-nez v6, :cond_0

    move/from16 v16, v5

    move/from16 v17, v6

    goto/16 :goto_a

    .line 180
    :cond_0
    sub-int v7, v5, v6

    .line 181
    .local v7, "delta":I
    add-int v8, v6, v5

    .line 182
    .local v8, "sum":I
    rem-int/lit8 v9, v8, 0x2

    if-nez v9, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    add-int/lit8 v9, v8, 0x1

    :goto_0
    div-int/lit8 v9, v9, 0x2

    .line 183
    .local v9, "offset":I
    iget-object v10, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vDown:[I

    add-int/lit8 v11, v9, 0x1

    aput v1, v10, v11

    .line 184
    iget-object v10, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vUp:[I

    add-int/lit8 v11, v9, 0x1

    add-int/lit8 v12, v2, 0x1

    aput v12, v10, v11

    .line 186
    const/4 v10, 0x0

    .local v10, "d":I
    :goto_1
    if-gt v10, v9, :cond_d

    .line 188
    neg-int v11, v10

    .local v11, "k":I
    :goto_2
    if-gt v11, v10, :cond_7

    .line 191
    add-int v12, v11, v9

    .line 192
    .local v12, "i":I
    neg-int v13, v10

    if-eq v11, v13, :cond_3

    if-eq v11, v10, :cond_2

    iget-object v13, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vDown:[I

    add-int/lit8 v14, v12, -0x1

    aget v14, v13, v14

    add-int/lit8 v15, v12, 0x1

    aget v13, v13, v15

    if-ge v14, v13, :cond_2

    goto :goto_3

    .line 195
    :cond_2
    iget-object v13, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vDown:[I

    add-int/lit8 v14, v12, -0x1

    aget v14, v13, v14

    add-int/lit8 v14, v14, 0x1

    aput v14, v13, v12

    goto :goto_4

    .line 193
    :cond_3
    :goto_3
    iget-object v13, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vDown:[I

    add-int/lit8 v14, v12, 0x1

    aget v14, v13, v14

    aput v14, v13, v12

    .line 198
    :goto_4
    iget-object v13, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vDown:[I

    aget v13, v13, v12

    .line 199
    .local v13, "x":I
    sub-int v14, v13, v1

    add-int/2addr v14, v3

    sub-int/2addr v14, v11

    .line 201
    .local v14, "y":I
    :goto_5
    if-ge v13, v2, :cond_4

    if-ge v14, v4, :cond_4

    iget-object v15, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->equator:Lorg/apache/commons/collections4/Equator;

    move/from16 v16, v5

    .end local v5    # "m":I
    .local v16, "m":I
    iget-object v5, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence1:Ljava/util/List;

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move/from16 v17, v6

    .end local v6    # "n":I
    .local v17, "n":I
    iget-object v6, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence2:Ljava/util/List;

    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v15, v5, v6}, Lorg/apache/commons/collections4/Equator;->equate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 202
    iget-object v5, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vDown:[I

    add-int/lit8 v13, v13, 0x1

    aput v13, v5, v12

    .line 203
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v16

    move/from16 v6, v17

    goto :goto_5

    .line 201
    .end local v16    # "m":I
    .end local v17    # "n":I
    .restart local v5    # "m":I
    .restart local v6    # "n":I
    :cond_4
    move/from16 v16, v5

    move/from16 v17, v6

    .line 206
    .end local v5    # "m":I
    .end local v6    # "n":I
    .restart local v16    # "m":I
    .restart local v17    # "n":I
    :cond_5
    rem-int/lit8 v5, v7, 0x2

    if-eqz v5, :cond_6

    sub-int v5, v7, v10

    if-gt v5, v11, :cond_6

    add-int v5, v7, v10

    if-gt v11, v5, :cond_6

    .line 207
    iget-object v5, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vUp:[I

    sub-int v6, v12, v7

    aget v6, v5, v6

    iget-object v15, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vDown:[I

    aget v15, v15, v12

    if-gt v6, v15, :cond_6

    .line 208
    sub-int v6, v12, v7

    aget v5, v5, v6

    add-int v6, v11, v1

    sub-int/2addr v6, v3

    invoke-direct {v0, v5, v6, v2, v4}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->buildSnake(IIII)Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;

    move-result-object v5

    return-object v5

    .line 188
    .end local v12    # "i":I
    .end local v13    # "x":I
    .end local v14    # "y":I
    :cond_6
    add-int/lit8 v11, v11, 0x2

    move/from16 v5, v16

    move/from16 v6, v17

    goto/16 :goto_2

    .end local v16    # "m":I
    .end local v17    # "n":I
    .restart local v5    # "m":I
    .restart local v6    # "n":I
    :cond_7
    move/from16 v16, v5

    move/from16 v17, v6

    .line 214
    .end local v5    # "m":I
    .end local v6    # "n":I
    .end local v11    # "k":I
    .restart local v16    # "m":I
    .restart local v17    # "n":I
    sub-int v5, v7, v10

    .local v5, "k":I
    :goto_6
    add-int v6, v7, v10

    if-gt v5, v6, :cond_c

    .line 216
    add-int v6, v5, v9

    sub-int/2addr v6, v7

    .line 217
    .local v6, "i":I
    sub-int v11, v7, v10

    if-eq v5, v11, :cond_9

    add-int v11, v7, v10

    if-eq v5, v11, :cond_8

    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vUp:[I

    add-int/lit8 v12, v6, 0x1

    aget v12, v11, v12

    add-int/lit8 v13, v6, -0x1

    aget v11, v11, v13

    if-gt v12, v11, :cond_8

    goto :goto_7

    .line 221
    :cond_8
    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vUp:[I

    add-int/lit8 v12, v6, -0x1

    aget v12, v11, v12

    aput v12, v11, v6

    goto :goto_8

    .line 219
    :cond_9
    :goto_7
    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vUp:[I

    add-int/lit8 v12, v6, 0x1

    aget v12, v11, v12

    add-int/lit8 v12, v12, -0x1

    aput v12, v11, v6

    .line 224
    :goto_8
    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vUp:[I

    aget v11, v11, v6

    add-int/lit8 v11, v11, -0x1

    .line 225
    .local v11, "x":I
    sub-int v12, v11, v1

    add-int/2addr v12, v3

    sub-int/2addr v12, v5

    .line 226
    .local v12, "y":I
    :goto_9
    if-lt v11, v1, :cond_a

    if-lt v12, v3, :cond_a

    iget-object v13, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->equator:Lorg/apache/commons/collections4/Equator;

    iget-object v14, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence1:Ljava/util/List;

    .line 227
    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    iget-object v15, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence2:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lorg/apache/commons/collections4/Equator;->equate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 228
    iget-object v13, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vUp:[I

    add-int/lit8 v14, v11, -0x1

    .end local v11    # "x":I
    .local v14, "x":I
    aput v11, v13, v6

    .line 229
    add-int/lit8 v12, v12, -0x1

    move v11, v14

    goto :goto_9

    .line 232
    .end local v14    # "x":I
    .restart local v11    # "x":I
    :cond_a
    rem-int/lit8 v13, v7, 0x2

    if-nez v13, :cond_b

    neg-int v13, v10

    if-gt v13, v5, :cond_b

    if-gt v5, v10, :cond_b

    .line 233
    iget-object v13, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vUp:[I

    aget v14, v13, v6

    iget-object v15, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vDown:[I

    add-int v18, v6, v7

    aget v15, v15, v18

    if-gt v14, v15, :cond_b

    .line 234
    aget v13, v13, v6

    add-int v14, v5, v1

    sub-int/2addr v14, v3

    invoke-direct {v0, v13, v14, v2, v4}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->buildSnake(IIII)Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;

    move-result-object v13

    return-object v13

    .line 214
    .end local v6    # "i":I
    .end local v11    # "x":I
    .end local v12    # "y":I
    :cond_b
    add-int/lit8 v5, v5, 0x2

    goto :goto_6

    .line 186
    .end local v5    # "k":I
    :cond_c
    add-int/lit8 v10, v10, 0x1

    move/from16 v5, v16

    move/from16 v6, v17

    goto/16 :goto_1

    .end local v16    # "m":I
    .end local v17    # "n":I
    .local v5, "m":I
    .local v6, "n":I
    :cond_d
    move/from16 v16, v5

    move/from16 v17, v6

    .line 241
    .end local v5    # "m":I
    .end local v6    # "n":I
    .end local v10    # "d":I
    .restart local v16    # "m":I
    .restart local v17    # "n":I
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Internal Error"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 176
    .end local v7    # "delta":I
    .end local v8    # "sum":I
    .end local v9    # "offset":I
    .end local v16    # "m":I
    .end local v17    # "n":I
    .restart local v5    # "m":I
    .restart local v6    # "n":I
    :cond_e
    move/from16 v16, v5

    move/from16 v17, v6

    .line 177
    .end local v5    # "m":I
    .end local v6    # "n":I
    .restart local v16    # "m":I
    .restart local v17    # "n":I
    :goto_a
    const/4 v5, 0x0

    return-object v5
.end method


# virtual methods
.method public getScript()Lorg/apache/commons/collections4/sequence/EditScript;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/sequence/EditScript<",
            "TT;>;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lorg/apache/commons/collections4/sequence/SequencesComparator;, "Lorg/apache/commons/collections4/sequence/SequencesComparator<TT;>;"
    new-instance v0, Lorg/apache/commons/collections4/sequence/EditScript;

    invoke-direct {v0}, Lorg/apache/commons/collections4/sequence/EditScript;-><init>()V

    .line 132
    .local v0, "script":Lorg/apache/commons/collections4/sequence/EditScript;, "Lorg/apache/commons/collections4/sequence/EditScript<TT;>;"
    iget-object v1, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence1:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v1, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence2:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->buildScript(IIIILorg/apache/commons/collections4/sequence/EditScript;)V

    .line 133
    return-object v0
.end method
