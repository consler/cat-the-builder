.class public Lorg/catrobat/catroid/common/LookData;
.super Ljava/lang/Object;
.source "LookData.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lorg/catrobat/catroid/common/Nameable;
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final transient THUMBNAIL_HEIGHT:I = 0x96

.field private static final transient THUMBNAIL_WIDTH:I = 0x96

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient collisionInformation:Lorg/catrobat/catroid/sensing/CollisionInformation;

.field protected transient file:Ljava/io/File;

.field protected fileName:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field

.field protected transient height:Ljava/lang/Integer;

.field private isWebRequest:Z

.field protected name:Ljava/lang/String;
    .annotation runtime Lcom/thoughtworks/xstream/annotations/XStreamAsAttribute;
    .end annotation
.end field

.field protected transient pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

.field transient textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

.field private transient thumbnailBitmap:Landroid/graphics/Bitmap;

.field private valid:Z

.field protected transient width:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lorg/catrobat/catroid/common/LookData;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/catrobat/catroid/common/LookData;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/common/LookData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 70
    iput-object v0, p0, Lorg/catrobat/catroid/common/LookData;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 72
    iput-object v0, p0, Lorg/catrobat/catroid/common/LookData;->collisionInformation:Lorg/catrobat/catroid/sensing/CollisionInformation;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/common/LookData;->valid:Z

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/common/LookData;->isWebRequest:Z

    .line 79
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/io/File;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/common/LookData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 70
    iput-object v0, p0, Lorg/catrobat/catroid/common/LookData;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 72
    iput-object v0, p0, Lorg/catrobat/catroid/common/LookData;->collisionInformation:Lorg/catrobat/catroid/sensing/CollisionInformation;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/catrobat/catroid/common/LookData;->valid:Z

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/common/LookData;->isWebRequest:Z

    .line 82
    iput-object p1, p0, Lorg/catrobat/catroid/common/LookData;->name:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lorg/catrobat/catroid/common/LookData;->file:Ljava/io/File;

    .line 84
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/common/LookData;->fileName:Ljava/lang/String;

    .line 85
    return-void
.end method


# virtual methods
.method public addRequiredResources(Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;)V
    .locals 0
    .param p1, "requiredResourcesSet"    # Lorg/catrobat/catroid/content/bricks/Brick$ResourcesSet;

    .line 121
    return-void
.end method

.method public clearCollisionInformation()V
    .locals 1

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/common/LookData;->collisionInformation:Lorg/catrobat/catroid/sensing/CollisionInformation;

    .line 229
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lorg/catrobat/catroid/common/LookData;->clone()Lorg/catrobat/catroid/common/LookData;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/catrobat/catroid/common/LookData;
    .locals 4

    .line 159
    :try_start_0
    new-instance v0, Lorg/catrobat/catroid/common/LookData;

    iget-object v1, p0, Lorg/catrobat/catroid/common/LookData;->name:Ljava/lang/String;

    iget-object v2, p0, Lorg/catrobat/catroid/common/LookData;->file:Ljava/io/File;

    invoke-static {v2}, Lorg/catrobat/catroid/io/StorageOperations;->duplicateFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/catrobat/catroid/common/LookData;-><init>(Ljava/lang/String;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/catrobat/catroid/common/LookData;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": Could not copy file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/catrobat/catroid/common/LookData;->file:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public dispose()V
    .locals 2

    .line 127
    iget-object v0, p0, Lorg/catrobat/catroid/common/LookData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V

    .line 129
    iput-object v1, p0, Lorg/catrobat/catroid/common/LookData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/common/LookData;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-eqz v0, :cond_1

    .line 132
    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;->getTexture()Lcom/badlogic/gdx/graphics/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/badlogic/gdx/graphics/Texture;->dispose()V

    .line 133
    iput-object v1, p0, Lorg/catrobat/catroid/common/LookData;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 135
    :cond_1
    return-void
.end method

.method public draw(Lcom/badlogic/gdx/graphics/g2d/Batch;F)V
    .locals 0
    .param p1, "batch"    # Lcom/badlogic/gdx/graphics/g2d/Batch;
    .param p2, "alpha"    # F

    .line 124
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 139
    if-ne p1, p0, :cond_0

    .line 140
    const/4 v0, 0x1

    return v0

    .line 143
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 144
    return v0

    .line 147
    :cond_1
    instance-of v1, p1, Lorg/catrobat/catroid/common/LookData;

    if-nez v1, :cond_2

    .line 148
    return v0

    .line 151
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/catrobat/catroid/common/LookData;

    .line 152
    .local v0, "lookData":Lorg/catrobat/catroid/common/LookData;
    iget-object v1, v0, Lorg/catrobat/catroid/common/LookData;->file:Ljava/io/File;

    iget-object v2, p0, Lorg/catrobat/catroid/common/LookData;->file:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getCollisionInformation()Lorg/catrobat/catroid/sensing/CollisionInformation;
    .locals 1

    .line 232
    iget-object v0, p0, Lorg/catrobat/catroid/common/LookData;->collisionInformation:Lorg/catrobat/catroid/sensing/CollisionInformation;

    if-nez v0, :cond_0

    .line 233
    new-instance v0, Lorg/catrobat/catroid/sensing/CollisionInformation;

    invoke-direct {v0, p0}, Lorg/catrobat/catroid/sensing/CollisionInformation;-><init>(Lorg/catrobat/catroid/common/LookData;)V

    iput-object v0, p0, Lorg/catrobat/catroid/common/LookData;->collisionInformation:Lorg/catrobat/catroid/sensing/CollisionInformation;

    .line 235
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/common/LookData;->collisionInformation:Lorg/catrobat/catroid/sensing/CollisionInformation;

    return-object v0
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/catrobat/catroid/common/LookData;->file:Ljava/io/File;

    return-object v0
.end method

.method public getImageMimeType()Ljava/lang/String;
    .locals 3

    .line 239
    iget-object v0, p0, Lorg/catrobat/catroid/common/LookData;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "pathName":Ljava/lang/String;
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 241
    .local v1, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 242
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 243
    iget-object v2, v1, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    return-object v2
.end method

.method public getIsWebRequest()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lorg/catrobat/catroid/common/LookData;->isWebRequest:Z

    return v0
.end method

.method public getMeasure()[I
    .locals 5

    .line 218
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 219
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 220
    iget-object v2, p0, Lorg/catrobat/catroid/common/LookData;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 221
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/common/LookData;->width:Ljava/lang/Integer;

    .line 222
    iget v2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lorg/catrobat/catroid/common/LookData;->height:Ljava/lang/Integer;

    .line 224
    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lorg/catrobat/catroid/common/LookData;->width:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget-object v3, p0, Lorg/catrobat/catroid/common/LookData;->height:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lorg/catrobat/catroid/common/LookData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPixmap()Lcom/badlogic/gdx/graphics/Pixmap;
    .locals 4

    .line 183
    iget-object v0, p0, Lorg/catrobat/catroid/common/LookData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    if-nez v0, :cond_0

    .line 185
    :try_start_0
    new-instance v0, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->files:Lcom/badlogic/gdx/Files;

    iget-object v2, p0, Lorg/catrobat/catroid/common/LookData;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/badlogic/gdx/Files;->absolute(Ljava/lang/String;)Lcom/badlogic/gdx/files/FileHandle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(Lcom/badlogic/gdx/files/FileHandle;)V

    iput-object v0, p0, Lorg/catrobat/catroid/common/LookData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;
    :try_end_0
    .catch Lcom/badlogic/gdx/utils/GdxRuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "nullPointerException":Ljava/lang/NullPointerException;
    sget-object v1, Lorg/catrobat/catroid/common/LookData;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    .end local v0    # "nullPointerException":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 187
    .local v0, "gdxRuntimeException":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    sget-object v1, Lorg/catrobat/catroid/common/LookData;->TAG:Ljava/lang/String;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-virtual {v0}, Lcom/badlogic/gdx/utils/GdxRuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Couldn\'t load file:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 189
    new-instance v1, Lcom/badlogic/gdx/graphics/Pixmap;

    sget-object v2, Lcom/badlogic/gdx/graphics/Pixmap$Format;->Alpha:Lcom/badlogic/gdx/graphics/Pixmap$Format;

    const/4 v3, 0x1

    invoke-direct {v1, v3, v3, v2}, Lcom/badlogic/gdx/graphics/Pixmap;-><init>(IILcom/badlogic/gdx/graphics/Pixmap$Format;)V

    iput-object v1, p0, Lorg/catrobat/catroid/common/LookData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 195
    .end local v0    # "gdxRuntimeException":Lcom/badlogic/gdx/utils/GdxRuntimeException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/catrobat/catroid/common/LookData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    return-object v0
.end method

.method public getTextureRegion()Lcom/badlogic/gdx/graphics/g2d/TextureRegion;
    .locals 3

    .line 171
    iget-object v0, p0, Lorg/catrobat/catroid/common/LookData;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    new-instance v1, Lcom/badlogic/gdx/graphics/Texture;

    invoke-virtual {p0}, Lorg/catrobat/catroid/common/LookData;->getPixmap()Lcom/badlogic/gdx/graphics/Pixmap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/badlogic/gdx/graphics/Texture;-><init>(Lcom/badlogic/gdx/graphics/Pixmap;)V

    invoke-direct {v0, v1}, Lcom/badlogic/gdx/graphics/g2d/TextureRegion;-><init>(Lcom/badlogic/gdx/graphics/Texture;)V

    iput-object v0, p0, Lorg/catrobat/catroid/common/LookData;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 174
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/common/LookData;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .line 204
    iget-object v0, p0, Lorg/catrobat/catroid/common/LookData;->thumbnailBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/catrobat/catroid/common/LookData;->file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/catrobat/catroid/utils/ImageEditing$ResizeType;->STAY_IN_RECTANGLE_WITH_SAME_ASPECT_RATIO:Lorg/catrobat/catroid/utils/ImageEditing$ResizeType;

    const/4 v2, 0x0

    const/16 v3, 0x96

    invoke-static {v0, v3, v3, v1, v2}, Lorg/catrobat/catroid/utils/ImageEditing;->getScaledBitmapFromPath(Ljava/lang/String;IILorg/catrobat/catroid/utils/ImageEditing$ResizeType;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/common/LookData;->thumbnailBitmap:Landroid/graphics/Bitmap;

    .line 210
    :cond_0
    iget-object v0, p0, Lorg/catrobat/catroid/common/LookData;->thumbnailBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getXstreamFileName()Ljava/lang/String;
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/catrobat/catroid/common/LookData;->file:Ljava/io/File;

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lorg/catrobat/catroid/common/LookData;->fileName:Ljava/lang/String;

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This should be used only to deserialize the Object. You should use @getFile() instead."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hashCode()I
    .locals 2

    .line 167
    iget-object v0, p0, Lorg/catrobat/catroid/common/LookData;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->hashCode()I

    move-result v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public invalidate()V
    .locals 1

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/catrobat/catroid/common/LookData;->valid:Z

    .line 252
    return-void
.end method

.method public invalidateThumbnailBitmap()V
    .locals 1

    .line 214
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/catrobat/catroid/common/LookData;->thumbnailBitmap:Landroid/graphics/Bitmap;

    .line 215
    return-void
.end method

.method public isValid()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lorg/catrobat/catroid/common/LookData;->valid:Z

    return v0
.end method

.method public setFile(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .line 116
    iput-object p1, p0, Lorg/catrobat/catroid/common/LookData;->file:Ljava/io/File;

    .line 117
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/catrobat/catroid/common/LookData;->fileName:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setIsWebRequest(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "isWebRequest"    # Ljava/lang/Boolean;

    .line 100
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/catrobat/catroid/common/LookData;->isWebRequest:Z

    .line 101
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lorg/catrobat/catroid/common/LookData;->name:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setPixmap(Lcom/badlogic/gdx/graphics/Pixmap;)V
    .locals 0
    .param p1, "pixmap"    # Lcom/badlogic/gdx/graphics/Pixmap;

    .line 200
    iput-object p1, p0, Lorg/catrobat/catroid/common/LookData;->pixmap:Lcom/badlogic/gdx/graphics/Pixmap;

    .line 201
    return-void
.end method

.method public setTextureRegion(Lcom/badlogic/gdx/graphics/g2d/TextureRegion;)V
    .locals 0
    .param p1, "textureRegion"    # Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 179
    iput-object p1, p0, Lorg/catrobat/catroid/common/LookData;->textureRegion:Lcom/badlogic/gdx/graphics/g2d/TextureRegion;

    .line 180
    return-void
.end method
