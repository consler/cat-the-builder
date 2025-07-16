.class public abstract Lar/com/hjg/pngj/chunks/PngChunkMultiple;
.super Lar/com/hjg/pngj/chunks/PngChunk;
.source "PngChunkMultiple.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2}, Lar/com/hjg/pngj/chunks/PngChunk;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    return-void
.end method


# virtual methods
.method public final allowsMultiple()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
