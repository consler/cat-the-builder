.class public abstract Lar/com/hjg/pngj/chunks/PngChunkTextVar;
.super Lar/com/hjg/pngj/chunks/PngChunkMultiple;
.source "PngChunkTextVar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lar/com/hjg/pngj/chunks/PngChunkTextVar$PngTxtInfo;
    }
.end annotation


# static fields
.field public static final KEY_Author:Ljava/lang/String; = "Author"

.field public static final KEY_Comment:Ljava/lang/String; = "Comment"

.field public static final KEY_Copyright:Ljava/lang/String; = "Copyright"

.field public static final KEY_Creation_Time:Ljava/lang/String; = "Creation Time"

.field public static final KEY_Description:Ljava/lang/String; = "Description"

.field public static final KEY_Disclaimer:Ljava/lang/String; = "Disclaimer"

.field public static final KEY_Software:Ljava/lang/String; = "Software"

.field public static final KEY_Source:Ljava/lang/String; = "Source"

.field public static final KEY_Title:Ljava/lang/String; = "Title"

.field public static final KEY_Warning:Ljava/lang/String; = "Warning"


# instance fields
.field protected key:Ljava/lang/String;

.field protected val:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "info"    # Lar/com/hjg/pngj/ImageInfo;

    .line 26
    invoke-direct {p0, p1, p2}, Lar/com/hjg/pngj/chunks/PngChunkMultiple;-><init>(Ljava/lang/String;Lar/com/hjg/pngj/ImageInfo;)V

    .line 27
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTextVar;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderingConstraint()Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;
    .locals 1

    .line 31
    sget-object v0, Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;->NONE:Lar/com/hjg/pngj/chunks/PngChunk$ChunkOrderingConstraint;

    return-object v0
.end method

.method public getVal()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lar/com/hjg/pngj/chunks/PngChunkTextVar;->val:Ljava/lang/String;

    return-object v0
.end method

.method public setKeyVal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lar/com/hjg/pngj/chunks/PngChunkTextVar;->key:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lar/com/hjg/pngj/chunks/PngChunkTextVar;->val:Ljava/lang/String;

    .line 58
    return-void
.end method
