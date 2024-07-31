.class public Lcom/badlogic/gdx/graphics/TextureArray;
.super Lcom/badlogic/gdx/graphics/GLTexture;
.source "TextureArray.java"


# static fields
.field static final managedTextureArrays:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/badlogic/gdx/Application;",
            "Lcom/badlogic/gdx/utils/Array<",
            "Lcom/badlogic/gdx/graphics/TextureArray;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private data:Lcom/badlogic/gdx/graphics/TextureArrayData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/badlogic/gdx/graphics/TextureArray;->managedTextureArrays:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/badlogic/gdx/graphics/TextureArrayData;)V
    .locals 2
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/TextureArrayData;

    .line 57
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v0

    const v1, 0x8c1a

    invoke-direct {p0, v1, v0}, Lcom/badlogic/gdx/graphics/GLTexture;-><init>(II)V

    .line 59
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    if-eqz v0, :cond_1

    .line 63
    invoke-direct {p0, p1}, Lcom/badlogic/gdx/graphics/TextureArray;->load(Lcom/badlogic/gdx/graphics/TextureArrayData;)V

    .line 65
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-static {v0, p0}, Lcom/badlogic/gdx/graphics/TextureArray;->addManagedTexture(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/TextureArray;)V

    .line 66
    :cond_0
    return-void

    .line 60
    :cond_1
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "TextureArray requires a device running with GLES 3.0 compatibilty"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public varargs constructor <init>(ZLcom/badlogic/gdx/graphics/Pixmap$Format;[Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1
    .param p1, "useMipMaps"    # Z
    .param p2, "format"    # Lcom/badlogic/gdx/graphics/Pixmap$Format;
    .param p3, "files"    # [Lcom/badlogic/gdx/files/FileHandle;

    .line 53
    invoke-static {p2, p1, p3}, Lcom/badlogic/gdx/graphics/TextureArrayData$Factory;->loadFromFiles(Lcom/badlogic/gdx/graphics/Pixmap$Format;Z[Lcom/badlogic/gdx/files/FileHandle;)Lcom/badlogic/gdx/graphics/TextureArrayData;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/TextureArray;-><init>(Lcom/badlogic/gdx/graphics/TextureArrayData;)V

    .line 54
    return-void
.end method

.method public varargs constructor <init>(Z[Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1
    .param p1, "useMipMaps"    # Z
    .param p2, "files"    # [Lcom/badlogic/gdx/files/FileHandle;

    .line 49
    sget-object v0, Lcom/badlogic/gdx/graphics/Pixmap$Format;->RGBA8888:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    invoke-direct {p0, p1, v0, p2}, Lcom/badlogic/gdx/graphics/TextureArray;-><init>(ZLcom/badlogic/gdx/graphics/Pixmap$Format;[Lcom/badlogic/gdx/files/FileHandle;)V

    .line 50
    return-void
.end method

.method public varargs constructor <init>([Lcom/badlogic/gdx/files/FileHandle;)V
    .locals 1
    .param p1, "files"    # [Lcom/badlogic/gdx/files/FileHandle;

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/graphics/TextureArray;-><init>(Z[Lcom/badlogic/gdx/files/FileHandle;)V

    .line 46
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "internalPaths"    # [Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcom/badlogic/gdx/graphics/TextureArray;->getInternalHandles([Ljava/lang/String;)[Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/TextureArray;-><init>([Lcom/badlogic/gdx/files/FileHandle;)V

    .line 42
    return-void
.end method

.method private static addManagedTexture(Lcom/badlogic/gdx/Application;Lcom/badlogic/gdx/graphics/TextureArray;)V
    .locals 2
    .param p0, "app"    # Lcom/badlogic/gdx/Application;
    .param p1, "texture"    # Lcom/badlogic/gdx/graphics/TextureArray;

    .line 121
    sget-object v0, Lcom/badlogic/gdx/graphics/TextureArray;->managedTextureArrays:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 122
    .local v0, "managedTextureArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/TextureArray;>;"
    if-nez v0, :cond_0

    new-instance v1, Lcom/badlogic/gdx/utils/Array;

    invoke-direct {v1}, Lcom/badlogic/gdx/utils/Array;-><init>()V

    move-object v0, v1

    .line 123
    :cond_0
    invoke-virtual {v0, p1}, Lcom/badlogic/gdx/utils/Array;->add(Ljava/lang/Object;)V

    .line 124
    sget-object v1, Lcom/badlogic/gdx/graphics/TextureArray;->managedTextureArrays:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public static clearAllTextureArrays(Lcom/badlogic/gdx/Application;)V
    .locals 1
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .line 130
    sget-object v0, Lcom/badlogic/gdx/graphics/TextureArray;->managedTextureArrays:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method private static varargs getInternalHandles([Ljava/lang/String;)[Lcom/badlogic/gdx/files/FileHandle;
    .locals 4
    .param p0, "internalPaths"    # [Ljava/lang/String;

    .line 69
    array-length v0, p0

    new-array v0, v0, [Lcom/badlogic/gdx/files/FileHandle;

    .line 70
    .local v0, "handles":[Lcom/badlogic/gdx/files/FileHandle;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 71
    sget-object v2, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    aget-object v3, p0, v1

    invoke-interface {v2, v3}, Lcom/badlogic/gdx/Files;->internal(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v2

    aput-object v2, v0, v1

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static getManagedStatus()Ljava/lang/String;
    .locals 4

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "Managed TextureArrays/app: { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    sget-object v1, Lcom/badlogic/gdx/graphics/TextureArray;->managedTextureArrays:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/Application;

    .line 148
    .local v2, "app":Lcom/badlogic/gdx/Application;
    sget-object v3, Lcom/badlogic/gdx/graphics/TextureArray;->managedTextureArrays:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/badlogic/gdx/utils/Array;

    iget v3, v3, Lcom/badlogic/gdx/utils/Array;->size:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 149
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .end local v2    # "app":Lcom/badlogic/gdx/Application;
    goto :goto_0

    .line 151
    :cond_0
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getNumManagedTextureArrays()I
    .locals 2

    .line 157
    sget-object v0, Lcom/badlogic/gdx/graphics/TextureArray;->managedTextureArrays:Ljava/util/Map;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    iget v0, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    return v0
.end method

.method public static invalidateAllTextureArrays(Lcom/badlogic/gdx/Application;)V
    .locals 3
    .param p0, "app"    # Lcom/badlogic/gdx/Application;

    .line 135
    sget-object v0, Lcom/badlogic/gdx/graphics/TextureArray;->managedTextureArrays:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/badlogic/gdx/utils/Array;

    .line 136
    .local v0, "managedTextureArray":Lcom/badlogic/gdx/utils/Array;, "Lcom/badlogic/gdx/utils/Array<Lcom/badlogic/gdx/graphics/TextureArray;>;"
    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v0, Lcom/badlogic/gdx/utils/Array;->size:I

    if-ge v1, v2, :cond_1

    .line 139
    invoke-virtual {v0, v1}, Lcom/badlogic/gdx/utils/Array;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/badlogic/gdx/graphics/TextureArray;

    .line 140
    .local v2, "textureArray":Lcom/badlogic/gdx/graphics/TextureArray;
    invoke-virtual {v2}, Lcom/badlogic/gdx/graphics/TextureArray;->reload()V

    .line 138
    .end local v2    # "textureArray":Lcom/badlogic/gdx/graphics/TextureArray;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private load(Lcom/badlogic/gdx/graphics/TextureArrayData;)V
    .locals 13
    .param p1, "data"    # Lcom/badlogic/gdx/graphics/TextureArrayData;

    .line 77
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureArray;->data:Lcom/badlogic/gdx/graphics/TextureArrayData;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->isManaged()Z

    move-result v0

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/TextureArray;->data:Lcom/badlogic/gdx/graphics/TextureArrayData;

    invoke-interface {v1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->isManaged()Z

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "New data must have the same managed status as the old data"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/badlogic/gdx/graphics/TextureArray;->data:Lcom/badlogic/gdx/graphics/TextureArrayData;

    .line 81
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/TextureArray;->bind()V

    .line 82
    sget-object v2, Lcom/badlogic/gdx/Gdx;->gl30:Lcom/badlogic/gdx/graphics/GL30;

    const v3, 0x8c1a

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->getInternalFormat()I

    move-result v5

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->getWidth()I

    move-result v6

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->getHeight()I

    move-result v7

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->getDepth()I

    move-result v8

    const/4 v9, 0x0

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->getInternalFormat()I

    move-result v10

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->getGLType()I

    move-result v11

    const/4 v12, 0x0

    invoke-interface/range {v2 .. v12}, Lcom/badlogic/gdx/graphics/GL30;->glTexImage3D(IIIIIIIIILjava/nio/Buffer;)V

    .line 84
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->prepare()V

    .line 86
    :cond_2
    invoke-interface {p1}, Lcom/badlogic/gdx/graphics/TextureArrayData;->consumeTextureArrayData()V

    .line 88
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureArray;->minFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/TextureArray;->magFilter:Lcom/badlogic/gdx/graphics/Texture$TextureFilter;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/TextureArray;->setFilter(Lcom/badlogic/gdx/graphics/Texture$TextureFilter;Lcom/badlogic/gdx/graphics/Texture$TextureFilter;)V

    .line 89
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureArray;->uWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    iget-object v1, p0, Lcom/badlogic/gdx/graphics/TextureArray;->vWrap:Lcom/badlogic/gdx/graphics/Texture$TextureWrap;

    invoke-virtual {p0, v0, v1}, Lcom/badlogic/gdx/graphics/TextureArray;->setWrap(Lcom/badlogic/gdx/graphics/Texture$TextureWrap;Lcom/badlogic/gdx/graphics/Texture$TextureWrap;)V

    .line 90
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    iget v1, p0, Lcom/badlogic/gdx/graphics/TextureArray;->glTarget:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/badlogic/gdx/graphics/GL20;->glBindTexture(II)V

    .line 91
    return-void
.end method


# virtual methods
.method public getDepth()I
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureArray;->data:Lcom/badlogic/gdx/graphics/TextureArrayData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureArrayData;->getDepth()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureArray;->data:Lcom/badlogic/gdx/graphics/TextureArrayData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureArrayData;->getHeight()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureArray;->data:Lcom/badlogic/gdx/graphics/TextureArrayData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureArrayData;->getWidth()I

    move-result v0

    return v0
.end method

.method public isManaged()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureArray;->data:Lcom/badlogic/gdx/graphics/TextureArrayData;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/TextureArrayData;->isManaged()Z

    move-result v0

    return v0
.end method

.method protected reload()V
    .locals 2

    .line 115
    invoke-virtual {p0}, Lcom/badlogic/gdx/graphics/TextureArray;->isManaged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    sget-object v0, Lcom/badlogic/gdx/Gdx;->gl:Lcom/badlogic/gdx/graphics/GL20;

    invoke-interface {v0}, Lcom/badlogic/gdx/graphics/GL20;->glGenTexture()I

    move-result v0

    iput v0, p0, Lcom/badlogic/gdx/graphics/TextureArray;->glHandle:I

    .line 117
    iget-object v0, p0, Lcom/badlogic/gdx/graphics/TextureArray;->data:Lcom/badlogic/gdx/graphics/TextureArrayData;

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/graphics/TextureArray;->load(Lcom/badlogic/gdx/graphics/TextureArrayData;)V

    .line 118
    return-void

    .line 115
    :cond_0
    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    const-string v1, "Tried to reload an unmanaged TextureArray"

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
