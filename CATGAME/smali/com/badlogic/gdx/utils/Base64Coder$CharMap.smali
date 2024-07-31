.class public Lcom/badlogic/gdx/utils/Base64Coder$CharMap;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/utils/Base64Coder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CharMap"
.end annotation


# instance fields
.field protected final decodingMap:[B

.field protected final encodingMap:[C


# direct methods
.method public constructor <init>(CC)V
    .locals 5
    .param p1, "char63"    # C
    .param p2, "char64"    # C

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x40

    new-array v1, v0, [C

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    .line 35
    const/16 v1, 0x80

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    .line 38
    const/4 v1, 0x0

    .line 39
    .local v1, "i":I
    const/16 v2, 0x41

    .local v2, "c":C
    :goto_0
    const/16 v3, 0x5a

    if-gt v2, v3, :cond_0

    .line 40
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    aput-char v2, v3, v1

    .line 39
    add-int/lit8 v1, v2, 0x1

    int-to-char v2, v1

    move v1, v4

    goto :goto_0

    .line 42
    .end local v2    # "c":C
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_0
    const/16 v2, 0x61

    .restart local v2    # "c":C
    :goto_1
    const/16 v3, 0x7a

    if-gt v2, v3, :cond_1

    .line 43
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .restart local v4    # "i":I
    aput-char v2, v3, v1

    .line 42
    add-int/lit8 v1, v2, 0x1

    int-to-char v2, v1

    move v1, v4

    goto :goto_1

    .line 45
    .end local v2    # "c":C
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_1
    const/16 v2, 0x30

    .restart local v2    # "c":C
    :goto_2
    const/16 v3, 0x39

    if-gt v2, v3, :cond_2

    .line 46
    iget-object v3, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .restart local v4    # "i":I
    aput-char v2, v3, v1

    .line 45
    add-int/lit8 v1, v2, 0x1

    int-to-char v2, v1

    move v1, v4

    goto :goto_2

    .line 48
    .end local v2    # "c":C
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    aput-char p1, v2, v1

    .line 49
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "i":I
    .restart local v1    # "i":I
    aput-char p2, v2, v3

    .line 50
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 51
    const/4 v3, -0x1

    aput-byte v3, v2, v1

    .line 50
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 53
    :cond_3
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v0, :cond_4

    .line 54
    iget-object v2, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    iget-object v3, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    aget-char v3, v3, v1

    int-to-byte v4, v1

    aput-byte v4, v2, v3

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 56
    :cond_4
    return-void
.end method


# virtual methods
.method public getDecodingMap()[B
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->decodingMap:[B

    return-object v0
.end method

.method public getEncodingMap()[C
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/badlogic/gdx/utils/Base64Coder$CharMap;->encodingMap:[C

    return-object v0
.end method
