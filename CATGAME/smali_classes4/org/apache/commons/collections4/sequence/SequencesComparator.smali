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
    invoke-static {}, Lorg/apache/commons/collections4/functors/DefaultEquator;->defaultEquator()Lorg/apache/commons/collections4/functors/DefaultEquator;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator;-><init>(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/collections4/Equator;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;Lorg/apache/commons/collections4/Equator;)V
    .locals 0
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence1:Ljava/util/List;

    .line 109
    iput-object p2, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence2:Ljava/util/List;

    .line 110
    iput-object p3, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->equator:Lorg/apache/commons/collections4/Equator;

    .line 112
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, 0x2

    .line 113
    new-array p2, p1, [I

    iput-object p2, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vDown:[I

    .line 114
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vUp:[I

    return-void
.end method

.method private buildScript(IIIILorg/apache/commons/collections4/sequence/EditScript;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Lorg/apache/commons/collections4/sequence/EditScript<",
            "TT;>;)V"
        }
    .end annotation

    .line 257
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->getMiddleSnake(IIII)Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;

    move-result-object v0

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

    move-object v3, p0

    move v4, p1

    move v6, p3

    move-object v8, p5

    .line 283
    invoke-direct/range {v3 .. v8}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->buildScript(IIIILorg/apache/commons/collections4/sequence/EditScript;)V

    .line 286
    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->getStart()I

    move-result p1

    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->getEnd()I

    move-result p3

    if-ge p1, p3, :cond_2

    .line 287
    new-instance p3, Lorg/apache/commons/collections4/sequence/KeepCommand;

    iget-object v1, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence1:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p3, v1}, Lorg/apache/commons/collections4/sequence/KeepCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, p3}, Lorg/apache/commons/collections4/sequence/EditScript;->append(Lorg/apache/commons/collections4/sequence/KeepCommand;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 289
    :cond_2
    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->getEnd()I

    move-result v2

    .line 290
    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->getEnd()I

    move-result p1

    invoke-virtual {v0}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->getDiag()I

    move-result p3

    sub-int v4, p1, p3

    move-object v1, p0

    move v3, p2

    move v5, p4

    move-object v6, p5

    .line 289
    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->buildScript(IIIILorg/apache/commons/collections4/sequence/EditScript;)V

    goto :goto_3

    :cond_3
    :goto_1
    move v0, p1

    move v1, p3

    :goto_2
    if-lt v0, p2, :cond_5

    if-ge v1, p4, :cond_4

    goto :goto_4

    :cond_4
    :goto_3
    return-void

    :cond_5
    :goto_4
    if-ge v0, p2, :cond_6

    if-ge v1, p4, :cond_6

    .line 266
    iget-object v2, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->equator:Lorg/apache/commons/collections4/Equator;

    iget-object v3, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence1:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence2:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/collections4/Equator;->equate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 267
    new-instance v2, Lorg/apache/commons/collections4/sequence/KeepCommand;

    iget-object v3, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence1:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/collections4/sequence/KeepCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v2}, Lorg/apache/commons/collections4/sequence/EditScript;->append(Lorg/apache/commons/collections4/sequence/KeepCommand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_6
    sub-int v2, p2, p1

    sub-int v3, p4, p3

    if-le v2, v3, :cond_7

    .line 272
    new-instance v2, Lorg/apache/commons/collections4/sequence/DeleteCommand;

    iget-object v3, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence1:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/collections4/sequence/DeleteCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v2}, Lorg/apache/commons/collections4/sequence/EditScript;->append(Lorg/apache/commons/collections4/sequence/DeleteCommand;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 275
    :cond_7
    new-instance v2, Lorg/apache/commons/collections4/sequence/InsertCommand;

    iget-object v3, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence2:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/collections4/sequence/InsertCommand;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p5, v2}, Lorg/apache/commons/collections4/sequence/EditScript;->append(Lorg/apache/commons/collections4/sequence/InsertCommand;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private buildSnake(IIII)Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;
    .locals 5

    move v0, p1

    :goto_0
    sub-int v1, v0, p2

    if-ge v1, p4, :cond_0

    if-ge v0, p3, :cond_0

    .line 147
    iget-object v2, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->equator:Lorg/apache/commons/collections4/Equator;

    iget-object v3, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence1:Ljava/util/List;

    .line 149
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence2:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Lorg/apache/commons/collections4/Equator;->equate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    :cond_0
    new-instance p3, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;

    invoke-direct {p3, p1, v0, p2}, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;-><init>(III)V

    return-object p3
.end method

.method private getMiddleSnake(IIII)Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    sub-int v5, v2, v1

    sub-int v6, v4, v3

    if-eqz v5, :cond_e

    if-nez v6, :cond_0

    goto/16 :goto_a

    :cond_0
    sub-int v7, v5, v6

    add-int/2addr v6, v5

    .line 182
    rem-int/lit8 v5, v6, 0x2

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    :goto_0
    div-int/lit8 v6, v6, 0x2

    .line 183
    iget-object v5, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vDown:[I

    add-int/lit8 v8, v6, 0x1

    aput v1, v5, v8

    .line 184
    iget-object v5, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vUp:[I

    add-int/lit8 v9, v2, 0x1

    aput v9, v5, v8

    const/4 v5, 0x0

    :goto_1
    if-gt v5, v6, :cond_d

    neg-int v8, v5

    move v9, v8

    :goto_2
    if-gt v9, v5, :cond_6

    add-int v10, v9, v6

    if-eq v9, v8, :cond_3

    if-eq v9, v5, :cond_2

    .line 192
    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vDown:[I

    add-int/lit8 v12, v10, -0x1

    aget v12, v11, v12

    add-int/lit8 v13, v10, 0x1

    aget v11, v11, v13

    if-ge v12, v11, :cond_2

    goto :goto_3

    .line 195
    :cond_2
    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vDown:[I

    add-int/lit8 v12, v10, -0x1

    aget v12, v11, v12

    add-int/lit8 v12, v12, 0x1

    aput v12, v11, v10

    goto :goto_4

    .line 193
    :cond_3
    :goto_3
    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vDown:[I

    add-int/lit8 v12, v10, 0x1

    aget v12, v11, v12

    aput v12, v11, v10

    .line 198
    :goto_4
    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vDown:[I

    aget v11, v11, v10

    sub-int v12, v11, v1

    add-int/2addr v12, v3

    sub-int/2addr v12, v9

    :goto_5
    if-ge v11, v2, :cond_4

    if-ge v12, v4, :cond_4

    .line 201
    iget-object v13, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->equator:Lorg/apache/commons/collections4/Equator;

    iget-object v14, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence1:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    iget-object v15, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence2:Ljava/util/List;

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lorg/apache/commons/collections4/Equator;->equate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 202
    iget-object v13, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vDown:[I

    add-int/lit8 v11, v11, 0x1

    aput v11, v13, v10

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 206
    :cond_4
    rem-int/lit8 v11, v7, 0x2

    if-eqz v11, :cond_5

    sub-int v11, v7, v5

    if-gt v11, v9, :cond_5

    add-int v11, v7, v5

    if-gt v9, v11, :cond_5

    .line 207
    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vUp:[I

    sub-int v12, v10, v7

    aget v11, v11, v12

    iget-object v12, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vDown:[I

    aget v10, v12, v10

    if-gt v11, v10, :cond_5

    add-int/2addr v9, v1

    sub-int/2addr v9, v3

    .line 208
    invoke-direct {v0, v11, v9, v2, v4}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->buildSnake(IIII)Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;

    move-result-object v1

    return-object v1

    :cond_5
    add-int/lit8 v9, v9, 0x2

    goto :goto_2

    :cond_6
    sub-int v9, v7, v5

    move v10, v9

    :goto_6
    add-int v11, v7, v5

    if-gt v10, v11, :cond_c

    add-int v12, v10, v6

    sub-int/2addr v12, v7

    if-eq v10, v9, :cond_8

    if-eq v10, v11, :cond_7

    .line 217
    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vUp:[I

    add-int/lit8 v13, v12, 0x1

    aget v13, v11, v13

    add-int/lit8 v14, v12, -0x1

    aget v11, v11, v14

    if-gt v13, v11, :cond_7

    goto :goto_7

    .line 221
    :cond_7
    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vUp:[I

    add-int/lit8 v13, v12, -0x1

    aget v13, v11, v13

    aput v13, v11, v12

    goto :goto_8

    .line 219
    :cond_8
    :goto_7
    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vUp:[I

    add-int/lit8 v13, v12, 0x1

    aget v13, v11, v13

    add-int/lit8 v13, v13, -0x1

    aput v13, v11, v12

    .line 224
    :goto_8
    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vUp:[I

    aget v11, v11, v12

    add-int/lit8 v11, v11, -0x1

    sub-int v13, v11, v1

    add-int/2addr v13, v3

    sub-int/2addr v13, v10

    :goto_9
    if-lt v11, v1, :cond_9

    if-lt v13, v3, :cond_9

    .line 226
    iget-object v14, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->equator:Lorg/apache/commons/collections4/Equator;

    iget-object v15, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence1:Ljava/util/List;

    .line 227
    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    move/from16 v16, v6

    iget-object v6, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence2:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v14, v15, v6}, Lorg/apache/commons/collections4/Equator;->equate(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 228
    iget-object v6, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vUp:[I

    add-int/lit8 v14, v11, -0x1

    aput v11, v6, v12

    add-int/lit8 v13, v13, -0x1

    move v11, v14

    move/from16 v6, v16

    goto :goto_9

    :cond_9
    move/from16 v16, v6

    .line 232
    :cond_a
    rem-int/lit8 v6, v7, 0x2

    if-nez v6, :cond_b

    if-gt v8, v10, :cond_b

    if-gt v10, v5, :cond_b

    .line 233
    iget-object v6, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vUp:[I

    aget v6, v6, v12

    iget-object v11, v0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->vDown:[I

    add-int/2addr v12, v7

    aget v11, v11, v12

    if-gt v6, v11, :cond_b

    add-int/2addr v10, v1

    sub-int/2addr v10, v3

    .line 234
    invoke-direct {v0, v6, v10, v2, v4}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->buildSnake(IIII)Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;

    move-result-object v1

    return-object v1

    :cond_b
    add-int/lit8 v10, v10, 0x2

    move/from16 v6, v16

    goto :goto_6

    :cond_c
    move/from16 v16, v6

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 241
    :cond_d
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Internal Error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_a
    const/4 v1, 0x0

    return-object v1
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
    new-instance v6, Lorg/apache/commons/collections4/sequence/EditScript;

    invoke-direct {v6}, Lorg/apache/commons/collections4/sequence/EditScript;-><init>()V

    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator;->sequence2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    move-object v0, p0

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections4/sequence/SequencesComparator;->buildScript(IIIILorg/apache/commons/collections4/sequence/EditScript;)V

    return-object v6
.end method
