.class public Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour;
.super Ljava/lang/Object;
.source "ChunkCopyBehaviour.java"


# static fields
.field public static final COPY_ALL:I = 0x8

.field public static final COPY_ALL_SAFE:I = 0x4

.field public static final COPY_ALMOSTALL:I = 0x100

.field public static final COPY_NONE:I = 0x0

.field public static final COPY_PALETTE:I = 0x1

.field public static final COPY_PHYS:I = 0x10

.field public static final COPY_TEXTUAL:I = 0x20

.field public static final COPY_TRANSPARENCY:I = 0x40

.field public static final COPY_UNKNOWN:I = 0x80


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(II)Z
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .line 14
    invoke-static {p0, p1}, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour;->maskMatch(II)Z

    move-result v0

    return v0
.end method

.method public static createPredicate(ILar/com/hjg/pngj/ImageInfo;)Lar/com/hjg/pngj/chunks/ChunkPredicate;
    .locals 1
    .param p0, "copyFromMask"    # I
    .param p1, "imgInfo"    # Lar/com/hjg/pngj/ImageInfo;

    .line 63
    new-instance v0, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour$1;

    invoke-direct {v0, p1, p0}, Lar/com/hjg/pngj/chunks/ChunkCopyBehaviour$1;-><init>(Lar/com/hjg/pngj/ImageInfo;I)V

    return-object v0
.end method

.method private static maskMatch(II)Z
    .locals 1
    .param p0, "v"    # I
    .param p1, "mask"    # I

    .line 51
    and-int v0, p0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
