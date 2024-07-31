.class public Lcom/badlogic/gdx/graphics/g2d/BitmapFont;
.super Ljava/lang/Object;
.source "BitmapFont.java"

# interfaces
.implements Lcom/badlogic/gdx/utils/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;,
        Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    }
.end annotation


# static fields
.field private static final LOG2_PAGE_SIZE:I = 0x9

.field private static final PAGES:I = 0x80

.field private static final PAGE_SIZE:I = 0x200


# instance fields
.field private final cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

.field final data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

.field private flipped:Z

.field integer:Z

.field private ownsTexture:Z

.field regions:Lcom/badlogic/gdx/utils/Array;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 72
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/utils/arial-15.fnt"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "com/badlogic/gdx/utils/arial-15.png"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;ZZ)V

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;

    .line 109
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 110
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 1
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "imageFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "flip"    # Z

    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;ZZ)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;ZZ)V
    .locals 4
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "imageFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p3, "flip"    # Z
    .param p4, "integer"    # Z

    .line 131
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-direct {v0, p1, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    new-instance v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v2, Lcom/badlogic/gdx/graphics/Texture;

    const/4 v3, 0x0

    invoke-direct {v2, p2, v3}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-direct {p0, v0, v1, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->ownsTexture:Z

    .line 133
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 1
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 94
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V
    .locals 2
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "flip"    # Z

    .line 103
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-direct {v0, p1, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/files/FileHandle;Z)V
    .locals 3
    .param p1, "fontFile"    # Lcom/badlogic/gdx/files/FileHandle;
    .param p2, "flip"    # Z

    .line 116
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    const/4 v1, 0x0

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;Z)V
    .locals 2
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    .param p2, "region"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .param p3, "integer"    # Z

    .line 144
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/badlogic/gdx/utils/Array;->with([Ljava/lang/Object;)Lcom/badlogic/gdx/utils/Array;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/utils/Array;Z)V

    .line 145
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;Lcom/badlogic/gdx/utils/Array;Z)V
    .locals 7
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    .param p3, "integer"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;Z)V"
        }
    .end annotation

    .line 151
    .local p2, "pageRegions":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/g2d/TextureRegion;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iget-boolean v0, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->flipped:Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->flipped:Z

    .line 153
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 154
    iput-boolean p3, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    .line 156
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget v1, p2, Lcom/badlogic/gdx/utils/Array;->size:I

    if-nez v1, :cond_0

    goto :goto_0

    .line 173
    :cond_0
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:Lcom/badlogic/gdx/utils/Array;

    .line 174
    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->ownsTexture:Z

    goto :goto_3

    .line 157
    :cond_1
    :goto_0
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 161
    iget-object v1, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    array-length v1, v1

    .line 162
    .local v1, "n":I
    new-instance v2, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v2, v1}, Lcom/badlogic/gdx/utils/Array;-><init>(I)V

    iput-object v2, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:Lcom/badlogic/gdx/utils/Array;

    .line 163
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_3

    .line 165
    iget-object v3, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->fontFile:Lcom/badlogic/gdx/files/FileHandle;

    if-nez v3, :cond_2

    .line 166
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .local v3, "file":Lcom/badlogic/gdx/files/FileHandle;
    goto :goto_2

    .line 168
    .end local v3    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :cond_2
    sget-object v3, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v4, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->imagePaths:[Ljava/lang/String;

    aget-object v4, v4, v2

    iget-object v5, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->fontFile:Lcom/badlogic/gdx/files/FileHandle;

    invoke-virtual {v5}, Lcom/badlogic/gdx/files/FileHandle;->type()Lcom/badlogic/gdx/Files$FileType;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/badlogic/gdx/Files;->getFileHandle(Ljava/lang/String;Lcom/badlogic/gdx/Files$FileType;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v3

    .line 169
    .restart local v3    # "file":Lcom/badlogic/gdx/files/FileHandle;
    :goto_2
    iget-object v4, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:Lcom/badlogic/gdx/utils/Array;

    new-instance v5, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v6, Lcom/badlogic/gdx/graphics/Texture;

    invoke-direct {v6, v3, v0}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    invoke-direct {v5, v6}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    invoke-virtual {v4, v5}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 163
    .end local v3    # "file":Lcom/badlogic/gdx/files/FileHandle;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 171
    .end local v2    # "i":I
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->ownsTexture:Z

    .line 172
    .end local v1    # "n":I
    nop

    .line 177
    :goto_3
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->newFontCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-result-object v0

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    .line 179
    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->load(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;)V

    .line 180
    return-void

    .line 158
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If no regions are specified, the font data must have an images path."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Z)V
    .locals 3
    .param p1, "flip"    # Z

    .line 80
    sget-object v0, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v1, "com/badlogic/gdx/utils/arial-15.fnt"

    invoke-interface {v0, v1}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    const-string v2, "com/badlogic/gdx/utils/arial-15.png"

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->classpath(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;-><init>(Lcom/badlogic/gdx/files/FileHandle;Lcom/badlogic/gdx/files/FileHandle;ZZ)V

    .line 82
    return-void
.end method

.method static indexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "ch"    # C
    .param p2, "start"    # I

    .line 427
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 428
    .local v0, "n":I
    :goto_0
    if-ge p2, v0, :cond_1

    .line 429
    invoke-interface {p0, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, p1, :cond_0

    return p2

    .line 428
    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 430
    :cond_1
    return v0
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .line 318
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->ownsTexture:Z

    if-eqz v0, :cond_0

    .line 319
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v1, v1, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v0, v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v1, v0}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v1

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .locals 2
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 194
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 195
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FF)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object v0

    .line 196
    .local v0, "layout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 197
    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .locals 8
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "targetWidth"    # F
    .param p6, "halign"    # I
    .param p7, "wrap"    # Z

    .line 203
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 204
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    invoke-virtual/range {v1 .. v7}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object v0

    .line 205
    .local v0, "layout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v1, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 206
    return-object v0
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFIIFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .locals 11
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "start"    # I
    .param p6, "end"    # I
    .param p7, "targetWidth"    # F
    .param p8, "halign"    # I
    .param p9, "wrap"    # Z

    .line 213
    move-object v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 214
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-object v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v2 .. v10}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFIIFIZ)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object v1

    .line 215
    .local v1, "layout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-object v3, p1

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 216
    return-object v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .locals 12
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "str"    # Ljava/lang/CharSequence;
    .param p3, "x"    # F
    .param p4, "y"    # F
    .param p5, "start"    # I
    .param p6, "end"    # I
    .param p7, "targetWidth"    # F
    .param p8, "halign"    # I
    .param p9, "wrap"    # Z
    .param p10, "truncate"    # Ljava/lang/String;

    .line 223
    move-object v0, p0

    iget-object v1, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 224
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-object v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    invoke-virtual/range {v2 .. v11}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Ljava/lang/CharSequence;FFIIFIZLjava/lang/String;)Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;

    move-result-object v1

    .line 225
    .local v1, "layout":Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    iget-object v2, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    move-object v3, p1

    invoke-virtual {v2, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 226
    return-object v1
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;FF)V
    .locals 1
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "layout"    # Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .line 232
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->clear()V

    .line 233
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p2, p3, p4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->addText(Lcom/badlogic/gdx/graphics/g2d/GlyphLayout;FF)V

    .line 234
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->draw(Lcom/badlogic/gdx/graphics/g2d/Batch;)V

    .line 235
    return-void
.end method

.method public getAscent()F
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->ascent:F

    return v0
.end method

.method public getCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    return-object v0
.end method

.method public getCapHeight()F
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->capHeight:F

    return v0
.end method

.method public getColor()Lcom/badlogic/gdx/graphics/Color;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    return-object v0
.end method

.method public getData()Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    return-object v0
.end method

.method public getDescent()F
    .locals 1

    .line 308
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->descent:F

    return v0
.end method

.method public getLineHeight()F
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->lineHeight:F

    return v0
.end method

.method public getRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/Array;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getRegion(I)Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 1
    .param p1, "index"    # I

    .line 276
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:Lcom/badlogic/gdx/utils/Array;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getRegions()Lcom/badlogic/gdx/utils/Array;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/g2d/TextureRegion;",
            ">;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:Lcom/badlogic/gdx/utils/Array;

    return-object v0
.end method

.method public getScaleX()F
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->scaleY:F

    return v0
.end method

.method public getSpaceXadvance()F
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->spaceXadvance:F

    return v0
.end method

.method public getXHeight()F
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->xHeight:F

    return v0
.end method

.method public isFlipped()Z
    .locals 1

    .line 313
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->flipped:Z

    return v0
.end method

.method protected load(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;)V
    .locals 10
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 183
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->glyphs:[[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 184
    .local v4, "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v4, :cond_0

    goto :goto_2

    .line 185
    :cond_0
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_2

    aget-object v7, v4, v6

    .line 186
    .local v7, "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v7, :cond_1

    iget-object v8, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:Lcom/badlogic/gdx/utils/Array;

    iget v9, v7, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    invoke-virtual {v8, v9}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p1, v7, v8}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setGlyphRegion(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 185
    .end local v7    # "glyph":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 183
    .end local v4    # "page":[Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    :cond_3
    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->regions:Lcom/badlogic/gdx/utils/Array;

    iget-object v2, p1, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->missingGlyph:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    iget v2, v2, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->page:I

    invoke-virtual {v1, v2}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    invoke-virtual {p1, v0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->setGlyphRegion(Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V

    .line 189
    :cond_4
    return-void
.end method

.method public newFontCache()Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;
    .locals 2

    .line 384
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    iget-boolean v1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    invoke-direct {v0, p0, v1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;-><init>(Lcom/badlogic/gdx/graphics/g2d/BitmapFont;Z)V

    return-object v0
.end method

.method public ownsTexture()Z
    .locals 1

    .line 368
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->ownsTexture:Z

    return v0
.end method

.method public setColor(FFFF)V
    .locals 1
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .line 249
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/graphics/Color;->set(FFFF)Lcom/badlogic/gdx/graphics/Color;

    .line 250
    return-void
.end method

.method public setColor(Lcom/badlogic/gdx/graphics/Color;)V
    .locals 1
    .param p1, "color"    # Lcom/badlogic/gdx/graphics/Color;

    .line 244
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->getColor()Lcom/badlogic/gdx/graphics/Color;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/Color;->set(Lcom/badlogic/gdx/graphics/Color;)Lcom/badlogic/gdx/graphics/Color;

    .line 245
    return-void
.end method

.method public setFixedWidthGlyphs(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "glyphs"    # Ljava/lang/CharSequence;

    .line 327
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    .line 328
    .local v0, "data":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;
    const/4 v1, 0x0

    .line 329
    .local v1, "maxAdvance":I
    const/4 v2, 0x0

    .local v2, "index":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .local v3, "end":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 330
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v4

    .line 331
    .local v4, "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    if-le v5, v1, :cond_0

    iget v1, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 329
    .end local v4    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 333
    .end local v2    # "index":I
    .end local v3    # "end":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "index":I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .restart local v3    # "end":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 334
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->getGlyph(C)Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;

    move-result-object v4

    .line 335
    .restart local v4    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    if-nez v4, :cond_2

    goto :goto_2

    .line 336
    :cond_2
    iget v5, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    iget v6, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    sub-int v6, v1, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xoffset:I

    .line 337
    iput v1, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->xadvance:I

    .line 338
    const/4 v5, 0x0

    check-cast v5, [[B

    iput-object v5, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->kerning:[[B

    .line 339
    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;->fixedWidth:Z

    .line 333
    .end local v4    # "g":Lcom/badlogic/gdx/graphics/g2d/BitmapFont$Glyph;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 341
    .end local v2    # "index":I
    .end local v3    # "end":I
    :cond_3
    return-void
.end method

.method public setOwnsTexture(Z)V
    .locals 0
    .param p1, "ownsTexture"    # Z

    .line 375
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->ownsTexture:Z

    .line 376
    return-void
.end method

.method public setUseIntegerPositions(Z)V
    .locals 1
    .param p1, "integer"    # Z

    .line 345
    iput-boolean p1, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    .line 346
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->cache:Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;

    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/graphics/g2d/BitmapFontCache;->setUseIntegerPositions(Z)V

    .line 347
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->data:Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;

    iget-object v0, v0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont$BitmapFontData;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public usesIntegerPositions()Z
    .locals 1

    .line 351
    iget-boolean v0, p0, Lcom/badlogic/gdx/graphics/g2d/BitmapFont;->integer:Z

    return v0
.end method
