.class public Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;
.super Ljava/lang/Object;
.source "TextureProvider.java"

# interfaces
.implements Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FileTextureProvider"
.end annotation


# instance fields
.field private magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field private minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

.field private uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

.field private useMipMaps:Z

.field private vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureFilter;->Linear:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 37
    sget-object v0, Lcom/badlogic/gdx/graphics/Texture$TextureWrap;->Repeat:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iput-object v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->useMipMaps:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Z)V
    .locals 0
    .param p1, "minFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p2, "magFilter"    # Lcom/badlogic/gdx/graphics/Texture$TextureFilter;
    .param p3, "uWrap"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p4, "vWrap"    # Lcom/badlogic/gdx/graphics/Texture$TextureWrap;
    .param p5, "useMipMaps"    # Z

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 44
    iput-object p2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    .line 45
    iput-object p3, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 46
    iput-object p4, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    .line 47
    iput-boolean p5, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->useMipMaps:Z

    .line 48
    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Lcom/badlogic/gdx/graphics/Texture;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .line 52
    new-instance v0, Lcom/badlogic/gdx/graphics/Texture;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    invoke-interface {v1, p1}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    iget-boolean v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->useMipMaps:Z

    invoke-direct {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/files/FileHandle;Z)V

    .line 53
    .local v0, "result":Lcom/badlogic/gdx/graphics/Texture;
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 54
    iget-object v1, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v2, p0, Lcom/badlogic/gdx/graphics/g3d/utils/TextureProvider$FileTextureProvider;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {v0, v1, v2}, Lcom/badlogic/gdx/graphics/Texture;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 55
    return-object v0
.end method
