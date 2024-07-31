.class public final Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;
.super Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;
.source "RoundedCorners.java"


# static fields
.field private static final ID:Ljava/lang/String; = "com.bumptech.glide.load.resource.bitmap.RoundedCorners"

.field private static final ID_BYTES:[B


# instance fields
.field private final roundingRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;->CHARSET:Ljava/nio/charset/Charset;

    const-string v1, "com.bumptech.glide.load.resource.bitmap.RoundedCorners"

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;->ID_BYTES:[B

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "roundingRadius"    # I

    .line 22
    invoke-direct {p0}, Lcom/bumptech/glide/load/resource/bitmap/BitmapTransformation;-><init>()V

    .line 23
    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "roundingRadius must be greater than 0."

    invoke-static {v0, v1}, Lcom/bumptech/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 24
    iput p1, p0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;->roundingRadius:I

    .line 25
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 35
    instance-of v0, p1, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 36
    move-object v0, p1

    check-cast v0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    .line 37
    .local v0, "other":Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;
    iget v2, p0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;->roundingRadius:I

    iget v3, v0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;->roundingRadius:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 39
    .end local v0    # "other":Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 44
    const-string v0, "com.bumptech.glide.load.resource.bitmap.RoundedCorners"

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;->roundingRadius:I

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

    .line 30
    iget v0, p0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;->roundingRadius:I

    invoke-static {p1, p2, v0}, Lcom/bumptech/glide/load/resource/bitmap/TransformationUtils;->roundedCorners(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 2
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;

    .line 49
    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;->ID_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 51
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;->roundingRadius:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 52
    .local v0, "radiusData":[B
    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 53
    return-void
.end method
