.class synthetic Lar/com/hjg/pngj/ChunkSeqReaderPng$1;
.super Ljava/lang/Object;
.source "ChunkSeqReaderPng.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lar/com/hjg/pngj/ChunkSeqReaderPng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$ar$com$hjg$pngj$chunks$ChunkLoadBehaviour:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 101
    invoke-static {}, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->values()[Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lar/com/hjg/pngj/ChunkSeqReaderPng$1;->$SwitchMap$ar$com$hjg$pngj$chunks$ChunkLoadBehaviour:[I

    :try_start_0
    sget-object v1, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->LOAD_CHUNK_IF_SAFE:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    invoke-virtual {v1}, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lar/com/hjg/pngj/ChunkSeqReaderPng$1;->$SwitchMap$ar$com$hjg$pngj$chunks$ChunkLoadBehaviour:[I

    sget-object v1, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->LOAD_CHUNK_NEVER:Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;

    invoke-virtual {v1}, Lar/com/hjg/pngj/chunks/ChunkLoadBehaviour;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
