.class public Lcom/bumptech/glide/load/resource/bitmap/Rotate;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "Rotate.java"


# static fields
.field private static final ID:Ljava/lang/String; = "com.bumptech.glide.load.resource.bitmap.Rotate"

.field private static final ID_BYTES:[B


# instance fields
.field private final degreesToRotate:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.Rotate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->ID_BYTES:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "degreesToRotate"    # I

    .line 21
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    .line 22
    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 33
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/bitmap/Rotate;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 34
    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;

    .line 35
    .local v0, "other":Lcom/bumptech/glide/load/resource/bitmap/Rotate;
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    iget v3, v0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 37
    .end local v0    # "other":Lcom/bumptech/glide/load/resource/bitmap/Rotate;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 42
    const-string v0, "com.bumptech.glide.load.resource.bitmap.Rotate"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    invoke-static {v1}, Lcom/bumptech/glide/util/Util;->hashCode(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Util;->hashCode(II)I

    move-result v0

    return v0
.end method

.method protected transform(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "pool"    # Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;
    .param p2, "toTransform"    # Landroid/graphics/Bitmap;
    .param p3, "outWidth"    # I
    .param p4, "outHeight"    # I

    .line 28
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    invoke-static {p2, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->rotateImage(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;

    .line 47
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->ID_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 49
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/Rotate;->degreesToRotate:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 50
    .local v0, "degreesData":[B
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 51
    return-void
.end method
