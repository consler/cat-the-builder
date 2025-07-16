.class Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;
.super Ljava/lang/Object;
.source "SequencesComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/sequence/SequencesComparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Snake"
.end annotation


# instance fields
.field private final diag:I

.field private final end:I

.field private final start:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    iput p1, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->start:I

    .line 319
    iput p2, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->end:I

    .line 320
    iput p3, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->diag:I

    return-void
.end method


# virtual methods
.method public getDiag()I
    .locals 1

    .line 347
    iget v0, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->diag:I

    return v0
.end method

.method public getEnd()I
    .locals 1

    .line 338
    iget v0, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->end:I

    return v0
.end method

.method public getStart()I
    .locals 1

    .line 329
    iget v0, p0, Lorg/apache/commons/collections4/sequence/SequencesComparator$Snake;->start:I

    return v0
.end method
