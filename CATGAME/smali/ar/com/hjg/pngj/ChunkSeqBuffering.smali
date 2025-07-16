.class public Lar/com/hjg/pngj/ChunkSeqBuffering;
.super Lar/com/hjg/pngj/ChunkSeqReader;
.source "ChunkSeqBuffering.java"


# instance fields
.field protected checkCrc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lar/com/hjg/pngj/ChunkSeqReader;-><init>()V

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lar/com/hjg/pngj/ChunkSeqBuffering;->checkCrc:Z

    return-void
.end method


# virtual methods
.method protected isIdatKind(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setCheckCrc(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lar/com/hjg/pngj/ChunkSeqBuffering;->checkCrc:Z

    return-void
.end method

.method protected shouldCheckCrc(ILjava/lang/String;)Z
    .locals 0

    .line 22
    iget-boolean p1, p0, Lar/com/hjg/pngj/ChunkSeqBuffering;->checkCrc:Z

    return p1
.end method
